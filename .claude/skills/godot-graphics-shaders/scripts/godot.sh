#!/usr/bin/env bash
# godot.sh — resolve the Godot 4 mono binary and forward all args to it.
#
# Every godot-* skill calls Godot through this wrapper so the binary path lives
# in exactly one place. If the install moves, edit GODOT_BIN below (or set the
# GODOT4 env var, which wins).
#
# Usage:
#   scripts/godot.sh --headless --path <proj> --import
#   scripts/godot.sh --headless --path <proj> --quit-after 2     # run a scene
#   scripts/godot.sh --version
#
# The wrapper does NOT add --headless for you. Add it yourself when you have no
# display (CI, servers, this agent). Leave it off only when a human is at a GUI.

set -euo pipefail

# Order of resolution: $GODOT4 env var → known install → `godot` on PATH.
GODOT_BIN="${GODOT4:-/home/reza/apps/Godot_v4.6.3-stable_mono_linux_x86_64/Godot_v4.6.3-stable_mono_linux.x86_64}"

if [[ ! -x "$GODOT_BIN" ]]; then
  if command -v godot >/dev/null 2>&1; then
    GODOT_BIN="$(command -v godot)"
  else
    echo "godot.sh: no Godot binary found." >&2
    echo "  Looked at: \$GODOT4, the bundled path, and 'godot' on PATH." >&2
    echo "  Set GODOT4=/path/to/Godot_...mono...x86_64 and retry." >&2
    exit 127
  fi
fi

exec "$GODOT_BIN" "$@"
