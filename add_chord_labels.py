#!/usr/bin/env python3
"""Add chord labels to rootless voicing grid diagrams in ch-chord-voicings.ptx."""

import re

PTX_FILE = '/workspaces/Build-testing/source/ch-chord-voicings.ptx'

# Complete chord sequence for the II-V-I through all 12 keys
# (C, Bb, Ab, Gb, E, D, B, A, G, F, Eb, Db) — whole-tone pair ordering
# Each entry: (xml_id, chord_label_latex, bass_note_latex)
GRIDS = [
    # Row 7
    ('img-rootless-prac-r7-g1', 'Dm9',            'D'),
    ('img-rootless-prac-r7-g2', 'G13',             'G'),
    ('img-rootless-prac-r7-g3', 'CMaj6/9',         'C'),
    ('img-rootless-prac-r7-g4', 'Cm9',             'C'),
    # Row 8
    ('img-rootless-prac-r8-g1', 'F13',             'F'),
    ('img-rootless-prac-r8-g2', r'B$\flat$Maj6/9', r'B$\flat$'),
    ('img-rootless-prac-r8-g3', r'B$\flat$m9',     r'B$\flat$'),
    ('img-rootless-prac-r8-g4', r'E$\flat$13',     r'E$\flat$'),
    # Row 9
    ('img-rootless-prac-r9-g1', r'A$\flat$Maj6/9', r'A$\flat$'),
    ('img-rootless-prac-r9-g2', r'A$\flat$m9',     r'A$\flat$'),
    ('img-rootless-prac-r9-g3', r'D$\flat$13',     r'D$\flat$'),
    ('img-rootless-prac-r9-g4', r'G$\flat$Maj6/9', r'G$\flat$'),
    # Row 10
    ('img-rootless-prac-r10-g1', r'F$\sharp$m9',   r'F$\sharp$'),
    ('img-rootless-prac-r10-g2', 'B13',             'B'),
    ('img-rootless-prac-r10-g3', 'EMaj6/9',         'E'),
    ('img-rootless-prac-r10-g4', 'Em9',             'E'),
    # Row 11
    ('img-rootless-prac-r11-g1', 'A13',             'A'),
    ('img-rootless-prac-r11-g2', 'DMaj6/9',         'D'),
    ('img-rootless-prac-r11-g3', r'C$\sharp$m9',   r'C$\sharp$'),
    ('img-rootless-prac-r11-g4', r'F$\sharp$13',   r'F$\sharp$'),
    # Row 12
    ('img-rootless-prac-r12-g1', 'BMaj6/9',         'B'),
    ('img-rootless-prac-r12-g2', 'Bm9',             'B'),
    ('img-rootless-prac-r12-g3', 'E13',             'E'),
    ('img-rootless-prac-r12-g4', 'AMaj6/9',         'A'),
    # Row 13
    ('img-rootless-prac-r13-g1', 'Am9',             'A'),
    ('img-rootless-prac-r13-g2', 'D13',             'D'),
    ('img-rootless-prac-r13-g3', 'GMaj6/9',         'G'),
    ('img-rootless-prac-r13-g4', 'Gm9',             'G'),
    # Row 14
    ('img-rootless-prac-r14-g1', 'C13',             'C'),
    ('img-rootless-prac-r14-g2', 'FMaj6/9',         'F'),
    ('img-rootless-prac-r14-g3', 'Fm9',             'F'),
    ('img-rootless-prac-r14-g4', r'B$\flat$13',    r'B$\flat$'),
    # Row 15
    ('img-rootless-prac-r15-g1', r'E$\flat$Maj6/9', r'E$\flat$'),
    ('img-rootless-prac-r15-g2', r'E$\flat$m9',     r'E$\flat$'),
    ('img-rootless-prac-r15-g3', r'A$\flat$13',     r'A$\flat$'),
    ('img-rootless-prac-r15-g4', r'D$\flat$Maj6/9', r'D$\flat$'),
]

def make_label_node(chord, bass):
    """Generate a TikZ node with the chord label and bass note rider."""
    # Bold chord name, smaller italic bass note below
    # Uses fontsize consistent with the grid note labels (fontsize{4}{4.5})
    return (
        r'\node[font=\fontsize{6}{7}\selectfont\bfseries, align=center, anchor=south] '
        r'at ({0.5*\xmax}, {\ymax+0.4}) '
        '{' + chord + r'\\[-1pt]{\fontsize{5}{5.5}\selectfont(bass: ' + bass + r')}};'
    )

def add_label_to_grid(content, img_id, chord, bass):
    """Insert a chord label node before \\end{tikzpicture} in the named image."""
    label_node = make_label_node(chord, bass)

    # Match the image block by its xml:id, up to and including \end{tikzpicture}
    # Use a non-greedy match so we grab the first \end{tikzpicture} after the ID
    pattern = (
        r'(<image xml:id="' + re.escape(img_id) + r'">.*?)'
        r'(\\end\{tikzpicture\})'
    )

    replacement_text = None

    def replacer(m):
        nonlocal replacement_text
        result = m.group(1) + label_node + '\n' + m.group(2)
        replacement_text = result
        return result

    new_content, count = re.subn(pattern, replacer, content, count=1, flags=re.DOTALL)

    if count == 0:
        print(f'WARNING: no match found for {img_id}')
    else:
        print(f'  Added label "{chord}" (bass: {bass}) to {img_id}')

    return new_content


def main():
    with open(PTX_FILE, 'r', encoding='utf-8') as f:
        content = f.read()

    original_content = content

    for img_id, chord, bass in GRIDS:
        content = add_label_to_grid(content, img_id, chord, bass)

    if content == original_content:
        print('ERROR: No changes made.')
        return

    with open(PTX_FILE, 'w', encoding='utf-8') as f:
        f.write(content)

    changed = sum(1 for a, b in zip(original_content.splitlines(), content.splitlines()) if a != b)
    print(f'\nDone. Wrote {PTX_FILE}')


if __name__ == '__main__':
    main()
