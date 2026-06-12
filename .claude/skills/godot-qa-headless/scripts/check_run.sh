#!/usr/bin/env bash
# check_run.sh — run a scene headless briefly and fail on any runtime error.
#
# The cheapest "did I break the build" gate: runs the game (or a given scene) for
# a few frames and greps stdout/stderr for ERROR / SCRIPT ERROR. Non-zero on any.
# Wire into Triage and the evaluator's regression check.
#
# Usage: check_run.sh <projdir> [scene_res_path] [frames]
#   scene_res_path default: project's main scene
#   frames default: 30

set -euo pipefail
DIR="${1:?usage: check_run.sh <projdir> [scene_res_path] [frames]}"
SCENE="${2:-}"
FRAMES="${3:-30}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

LOG="$(mktemp)"
trap 'rm -f "$LOG"' EXIT

echo "==> Running headless for $FRAMES frames${SCENE:+ ($SCENE)}"
set +e
if [[ -n "$SCENE" ]]; then
  "$HERE/godot.sh" --headless --path "$DIR" --quit-after "$FRAMES" "$SCENE" >"$LOG" 2>&1
else
  "$HERE/godot.sh" --headless --path "$DIR" --quit-after "$FRAMES" >"$LOG" 2>&1
fi
run_code=$?
set -e

# Surface errors found in output.
if grep -qE "ERROR|SCRIPT ERROR|Failed to load|Cannot instantiate" "$LOG"; then
  echo "FAIL: runtime errors detected:"
  grep -nE "ERROR|SCRIPT ERROR|Failed to load|Cannot instantiate" "$LOG" | head -20
  exit 1
fi

if [[ $run_code -ne 0 ]]; then
  echo "FAIL: process exited non-zero ($run_code)"
  tail -20 "$LOG"
  exit 1
fi

echo "OK: clean run, no errors."
