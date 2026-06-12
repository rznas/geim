#!/usr/bin/env bash
# export.sh — build C#, then export a Godot preset to a binary. Templates-aware.
#
# Distinguishes "export templates not installed" (a setup problem) from a real
# export failure, so CI logs are actionable.
#
# Usage: export.sh <projdir> <preset_name> <out_path> [release|debug|pack]
#   preset_name must match export_presets.cfg exactly (quote if it has spaces)
#   out_path    absolute, or relative to project.godot; include filename+ext
#   mode        default: release

set -euo pipefail
DIR="${1:?usage: export.sh <projdir> <preset> <out> [release|debug|pack]}"
PRESET="${2:?need preset name (match export_presets.cfg)}"
OUT="${3:?need output path (with filename+ext)}"
MODE="${4:-release}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

case "$MODE" in
  release) FLAG="--export-release" ;;
  debug)   FLAG="--export-debug" ;;
  pack)    FLAG="--export-pack" ;;
  *) echo "mode must be release|debug|pack (got: $MODE)" >&2; exit 2 ;;
esac

[[ -f "$DIR/project.godot" ]] || { echo "no project.godot in $DIR" >&2; exit 2; }
[[ -f "$DIR/export_presets.cfg" ]] || {
  echo "no export_presets.cfg in $DIR — create a preset first (editor: Project > Export," >&2
  echo "or author the file; see references/export_presets.md)." >&2
  exit 2
}

# Warn early if templates appear missing (best-effort; path varies by OS).
VER="$("$HERE/godot.sh" --version 2>/dev/null | head -1)"   # e.g. 4.6.3.stable.mono...
TPL_BASE="${VER%.official*}"                                  # 4.6.3.stable.mono
if [[ -n "${TPL_BASE:-}" ]]; then
  if ! ls "$HOME/.local/share/godot/export_templates/$TPL_BASE/" >/dev/null 2>&1; then
    echo "NOTE: export templates for '$TPL_BASE' not found at the default Linux path." >&2
    echo "      If export fails with a template error, install them (editor: Manage" >&2
    echo "      Export Templates) — this is a setup step, not a project bug." >&2
  fi
fi

# Build C# first so compile errors surface before the slower export.
CSPROJ="$(ls "$DIR"/*.csproj 2>/dev/null | head -1)"
if [[ -n "$CSPROJ" ]]; then
  echo "==> dotnet build (surface C# errors before export)"
  dotnet build "$CSPROJ"
fi

# Output dir must exist; export_path resolves relative to project.godot.
case "$OUT" in
  /*) OUTDIR="$(dirname "$OUT")" ;;
  *)  OUTDIR="$DIR/$(dirname "$OUT")" ;;
esac
mkdir -p "$OUTDIR"

echo "==> $FLAG \"$PRESET\" -> $OUT"
"$HERE/godot.sh" --headless --path "$DIR" $FLAG "$PRESET" "$OUT"
echo "OK: exported $PRESET ($MODE) to $OUT"
