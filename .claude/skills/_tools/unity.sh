#!/usr/bin/env bash
# unity.sh — resolve the Unity 6 Editor binary and forward all args to it.
#
# Every unity-* skill that runs Unity calls it through this wrapper so the path
# lives in exactly one place. Resolution order:
#   $UNITY_PATH env var  →  common Hub install locations  →  `unity` on PATH.
#
# Unity is almost always run headless/CI as:
#   unity.sh -batchmode -nographics -quit -projectPath <proj> -executeMethod <M>
#   unity.sh -batchmode -nographics -runTests -testPlatform PlayMode -projectPath <proj>
#
# The wrapper does NOT add -batchmode/-nographics for you — pass them yourself
# (you almost always want all three of -batchmode -nographics -quit on a server).
#
# NOTE: As shipped in THIS environment no Unity Editor is installed, so this
# wrapper exits 127 with install instructions. The unity-* skills are
# doc-sourced (grounded in docs/UnityDocumentation, Unity 6 / 6000.x) and were
# NOT compile-tested here. Install Unity 6 + set $UNITY_PATH to enable real
# batchmode build / PlayMode test verification.

set -euo pipefail

resolve() {
  # 1. explicit override
  if [[ -n "${UNITY_PATH:-}" && -x "${UNITY_PATH}" ]]; then
    echo "$UNITY_PATH"; return 0
  fi
  # 2. common Unity Hub editor locations (newest 6000.x first)
  local c
  for c in \
    "$HOME"/Unity/Hub/Editor/6000.*/Editor/Unity \
    /opt/unity/editors/6000.*/Editor/Unity \
    /opt/Unity/Editor/Unity \
    "$HOME"/Applications/Unity/Hub/Editor/6000.*/Editor/Unity; do
    if [[ -x "$c" ]]; then echo "$c"; return 0; fi
  done
  # 3. PATH
  if command -v unity >/dev/null 2>&1; then command -v unity; return 0; fi
  return 1
}

if ! UNITY_BIN="$(resolve)"; then
  {
    echo "unity.sh: no Unity 6 Editor found."
    echo "  Looked at: \$UNITY_PATH, Unity Hub install dirs (6000.*), and 'unity' on PATH."
    echo "  Install Unity 6 (6000.x) via Unity Hub, then:"
    echo "    export UNITY_PATH=/path/to/Hub/Editor/6000.x.y/Editor/Unity"
    echo "  and re-run. Until then the unity-* skills are doc-sourced, not"
    echo "  compile-tested in this environment."
  } >&2
  exit 127
fi

exec "$UNITY_BIN" "$@"
