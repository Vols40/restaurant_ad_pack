#!/usr/bin/env bash
set -e
mkdir -p build/mockups

# Încearcă Inkscape (aplicația instalată din /Applications)
if [ -x "/Applications/Inkscape.app/Contents/MacOS/inkscape" ]; then
  /Applications/Inkscape.app/Contents/MacOS/inkscape build/templates/template1-1200x628.svg --export-type=png --export-filename=build/mockups/cover-1200x628.png --export-width=1200 --export-height=628
  /Applications/Inkscape.app/Contents/MacOS/inkscape build/templates/template1-1080x1080.svg --export-type=png --export-filename=build/mockups/preview-1080x1080.png --export-width=1080 --export-height=1080
  /Applications/Inkscape.app/Contents/MacOS/inkscape build/templates/template1-1080x1350.svg --export-type=png --export-filename=build/mockups/preview-1080x1350.png --export-width=1080 --export-height=1350
  echo "Mockups generate using Inkscape (app path)."
  exit 0
fi

# Dacă inkscape în PATH
if command -v inkscape >/dev/null 2>&1; then
  inkscape build/templates/template1-1200x628.svg --export-type=png --export-filename=build/mockups/cover-1200x628.png --export-width=1200 --export-height=628
  inkscape build/templates/template1-1080x1080.svg --export-type=png --export-filename=build/mockups/preview-1080x1080.png --export-width=1080 --export-height=1080
  inkscape build/templates/template1-1080x1350.svg --export-type=png --export-filename=build/mockups/preview-1080x1350.png --export-width=1080 --export-height=1350
  echo "Mockups generate using inkscape in PATH."
  exit 0
fi

# Fallback: rsvg-convert (librsvg)
if command -v rsvg-convert >/dev/null 2>&1; then
  rsvg-convert -w 1200 -h 628 build/templates/template1-1200x628.svg -o build/mockups/cover-1200x628.png
  rsvg-convert -w 1080 -h 1080 build/templates/template1-1080x1080.svg -o build/mockups/preview-1080x1080.png
  rsvg-convert -w 1080 -h 1350 build/templates/template1-1080x1350.svg -o build/mockups/preview-1080x1350.png
  echo "Mockups generate using rsvg-convert."
  exit 0
fi

echo "Neither Inkscape nor rsvg-convert found. Install one of them (brew instructions in comments)."
exit 1
