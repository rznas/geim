#!/usr/bin/env bash
# check_assets.sh — report imported assets, flag missing .import sidecars, reimport.
#
# Run after dropping in new art. It:
#   1. lists importable source files and whether each has a .import sidecar
#   2. runs a headless reimport so the cache is current
#
# Usage: check_assets.sh <projdir>

set -euo pipefail
DIR="${1:?usage: check_assets.sh <projdir>}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

[[ -f "$DIR/project.godot" ]] || { echo "no project.godot in $DIR" >&2; exit 2; }

echo "==> Scanning importable assets under $DIR (excluding .godot/)"
# Common importable extensions.
mapfile -t assets < <(find "$DIR" -type f \
  \( -iname '*.png' -o -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.svg' \
     -o -iname '*.glb' -o -iname '*.gltf' -o -iname '*.obj' -o -iname '*.fbx' \
     -o -iname '*.wav' -o -iname '*.ogg' -o -iname '*.mp3' -o -iname '*.ttf' \) \
  -not -path '*/.godot/*' | sort)

missing=0
if [[ ${#assets[@]} -eq 0 ]]; then
  echo "   (no importable source assets found yet)"
else
  for a in "${assets[@]}"; do
    if [[ -f "$a.import" ]]; then
      echo "   ok      ${a#$DIR/}"
    else
      echo "   NEW     ${a#$DIR/}   (no .import yet — will be created on reimport)"
      missing=$((missing+1))
    fi
  done
fi

echo "==> Reimporting headlessly to apply settings / create sidecars"
"$HERE/godot.sh" --headless --path "$DIR" --import

echo "OK: reimport complete. ${missing} asset(s) newly imported."
echo "Remember: commit *.import files; do NOT commit .godot/."
