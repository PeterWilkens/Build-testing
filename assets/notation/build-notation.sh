#!/bin/bash
# Regenerate all notation SVGs and PDFs from .ly source files.
# Edit the .ly files to change notes, then run this script.
# Usage: bash build-notation.sh

set -e
cd "$(dirname "$0")"

for lyfile in *.ly; do
  base="${lyfile%.ly}"
  echo "Compiling $lyfile ..."
  lilypond -dcrop --svg -o "$base" "$lyfile"
  cp "${base}.cropped.svg" "${base}.svg"
  echo "  -> ${base}.svg (cropped)"
  lilypond -dcrop --pdf -o "$base" "$lyfile"
  echo "  -> ${base}.pdf"
done

echo "All notation SVGs and PDFs rebuilt."
