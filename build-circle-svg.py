#!/usr/bin/env python3
"""Generate a Circle of Fifths SVG with inlined LilyPond key signatures."""
import re, math, os

KEYS = [
    # (angle_deg, major_label, keysig_file, minor_label)
    (0,   "C",       "keysig-c-major.svg",      "Am"),
    (30,  "G",       "keysig-g-major.svg",      "Em"),
    (60,  "D",       "keysig-d-major.svg",      "Bm"),
    (90,  "A",       "keysig-a-major.svg",      "F\u266fm"),
    (120, "E",       "keysig-e-major.svg",      "C\u266fm"),
    (150, "B",       "keysig-b-major.svg",      "G\u266fm"),
    (180, "F\u266f/G\u266d", "keysig-fsharp-major.svg", "D\u266fm/E\u266dm"),
    (210, "D\u266d", "keysig-db-major.svg",     "B\u266dm"),
    (240, "A\u266d", "keysig-ab-major.svg",     "Fm"),
    (270, "E\u266d", "keysig-eb-major.svg",     "Cm"),
    (300, "B\u266d", "keysig-bb-major.svg",     "Gm"),
    (330, "F",       "keysig-f-major.svg",      "Dm"),
]

NOTATION_DIR = os.path.join(os.path.dirname(__file__), "assets", "notation")
OUT_FILE = os.path.join(os.path.dirname(__file__), "assets", "circle-of-fifths.svg")

R_OUTER  = 300
R_MIDDLE = 210   # middle circle
R_INNER  = 150
R_MAJOR  = 255   # major labels (outer band centre)
R_MINOR  = 180   # minor labels (inner band centre)
R_KEYSIG = 370   # centre of key-sig images

def polar(r, angle_deg):
    """Return (x, y) for angle measured clockwise from 12 o'clock."""
    a = math.radians(angle_deg - 90)  # SVG: 0° = 3 o'clock, CCW positive
    # clockwise from top: rotate by (angle-90) but in math coords
    a = math.radians(angle_deg)
    x = r * math.sin(a)
    y = -r * math.cos(a)
    return x, y

def extract_inner_svg(filepath):
    """Read an SVG file and return (content_w, viewBox_h, inner_content, vb_x, vb_y, staff_centre_y).
    content_w is the width of the actual musical content (excluding caption text).
    staff_centre_y is the vertical midpoint of the five staff lines in viewBox coords."""
    with open(filepath) as f:
        raw = f.read()
    # Get viewBox dimensions
    m = re.search(r'viewBox="([^"]+)"', raw)
    parts = m.group(1).split()
    vb_x, vb_y, vb_w, vb_h = [float(p) for p in parts]
    # Find staff line y-positions: <g transform="translate(0.0000, Y)"> containing a <line>
    staff_ys = []
    for gm in re.finditer(
        r'<g transform="translate\(0\.0000,\s*([\d.]+)\)">\s*<line[^/]*/>', raw
    ):
        staff_ys.append(float(gm.group(1)))
    staff_centre_y = (min(staff_ys) + max(staff_ys)) / 2 if staff_ys else (vb_y + vb_h / 2)
    # Strip outer <svg> tags
    inner = re.sub(r'<svg[^>]*>', '', raw, count=1)
    inner = re.sub(r'</svg>\s*$', '', inner)
    # Strip <style> block
    inner = re.sub(r'<style[^>]*>.*?</style>', '', inner, flags=re.DOTALL)
    # Strip caption text at bottom (the <g> with <text> child)
    inner = re.sub(r'<g transform="translate\([^)]*\)">\s*<text[^>]*>.*?</text>\s*</g>', '', inner, flags=re.DOTALL)
    # Strip <a> wrappers but keep content
    inner = re.sub(r'<a [^>]*>', '', inner)
    inner = re.sub(r'</a>', '', inner)
    # Compute actual content width from remaining graphical elements
    content_right = 0
    for lm in re.finditer(r'x2="([\d.]+)"', inner):
        content_right = max(content_right, float(lm.group(1)))
    for tm in re.finditer(r'translate\(([\d.]+)', inner):
        content_right = max(content_right, float(tm.group(1)) + 2.0)
    content_w = content_right - vb_x + 0.5 if content_right > 0 else vb_w
    return content_w, vb_h, inner.strip(), vb_x, vb_y, staff_centre_y

# ---------- build SVG ----------
parts = []
parts.append('''<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
     viewBox="-480 -480 960 960" width="960" height="960">
  <defs>
    <style>
      .note-label { font-family: serif; font-size: 22px; font-weight: bold;
                    text-anchor: middle; dominant-baseline: central; }
      .circle-line { fill: none; stroke: #333; stroke-width: 1.5; }
      .seg-line    { stroke: #333; stroke-width: 1; }
    </style>
  </defs>

  <!-- Shaded band between outer and middle circles -->
  <path d="M300,0 A300,300 0 1,1 -300,0 A300,300 0 1,1 300,0
           M210,0 A210,210 0 1,0 -210,0 A210,210 0 1,0 210,0 Z"
        fill="#e6e6e6" stroke="none" fill-rule="evenodd" />

  <!-- Outer circle -->
  <circle cx="0" cy="0" r="300" class="circle-line" />
  <!-- Middle circle -->
  <circle cx="0" cy="0" r="210" class="circle-line" />
  <!-- Inner circle -->
  <circle cx="0" cy="0" r="150" class="circle-line" />
''')

# Radial segment dividers (boundaries halfway between each key)
for i in range(12):
    angle = i * 30 - 15
    x1, y1 = polar(R_INNER, angle)
    x2, y2 = polar(R_OUTER, angle)
    parts.append(f'  <line x1="{x1:.1f}" y1="{y1:.1f}" x2="{x2:.1f}" y2="{y2:.1f}" class="seg-line" />')

parts.append('')

# Major labels in outer band
for angle, label, _, _ in KEYS:
    x, y = polar(R_MAJOR, angle)
    fs = '17' if '/' in label else '22'
    parts.append(
        f'  <text x="{x:.1f}" y="{y:.1f}" class="note-label" font-size="{fs}">{label}</text>'
    )

parts.append('')

# Minor labels in inner band
for angle, _, _, minor in KEYS:
    x, y = polar(R_MINOR, angle)
    fs = '13' if '/' in minor else '18'
    parts.append(
        f'  <text x="{x:.1f}" y="{y:.1f}" class="note-label" font-size="{fs}">{minor}</text>'
    )

parts.append('')
parts.append('  <!-- Key signatures (LilyPond staves) -->')

# Embed key signatures outside the circle
KEYSIG_DISPLAY_H = 55   # pixel height for each keysig image

for angle, label, fname, _ in KEYS:
    fpath = os.path.join(NOTATION_DIR, fname)
    content_w, vb_h, inner, vb_x, vb_y, staff_centre_y = extract_inner_svg(fpath)

    # Scale to fit KEYSIG_DISPLAY_H pixels tall
    scale = KEYSIG_DISPLAY_H / vb_h
    disp_w = content_w * scale

    # Where the staff visual centre sits within the displayed image (pixels from top)
    staff_cy_px = (staff_centre_y - vb_y) * scale
    # Geometric centre of the bounding box
    geo_cy_px = KEYSIG_DISPLAY_H / 2
    # Correction: shift placement so the staff centre (not box centre) lands on the target
    vert_correction = staff_cy_px - geo_cy_px

    # Centre of key-sig placement
    cx, cy = polar(R_KEYSIG, angle)
    # offset so the *staff visual centre* is at (cx, cy)
    ox = cx - disp_w / 2
    oy = cy - KEYSIG_DISPLAY_H / 2 - vert_correction

    parts.append(f'  <!-- {label} key signature -->')
    parts.append(
        f'  <svg x="{ox:.1f}" y="{oy:.1f}" width="{disp_w:.1f}" height="{KEYSIG_DISPLAY_H:.0f}" '
        f'viewBox="{vb_x:.4f} {vb_y:.4f} {content_w:.4f} {vb_h:.4f}" overflow="visible">'
    )
    parts.append(inner)
    parts.append('  </svg>')

parts.append('')
parts.append('  <!-- Centre title -->')
parts.append('  <text x="0" y="-5" font-family="serif" font-size="18" font-weight="bold" text-anchor="middle">Circle of</text>')
parts.append('  <text x="0" y="17" font-family="serif" font-size="18" font-weight="bold" text-anchor="middle">Fifths</text>')

parts.append('\n</svg>')

with open(OUT_FILE, 'w') as f:
    f.write('\n'.join(parts))

print(f"Wrote {OUT_FILE}")
