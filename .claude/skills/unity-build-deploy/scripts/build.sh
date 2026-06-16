#!/usr/bin/env bash
# build.sh — run a headless Unity 6 command-line Player build.
#
# Wraps the canonical batch-mode build invocation from the Unity manual
# (references/api/build-command-line.md):
#
#   unity.sh -batchmode -nographics -quit \
#            -projectPath <proj> \
#            -executeMethod BuildScript.Build \
#            -buildTarget <target> \
#            -logFile <log>
#
# THE GOTCHA: there is no pure-CLI "build" flag that bundles your scenes. You
# must ship an editor build script (assets/scripts/BuildScript.cs.template ->
# <proj>/Assets/Editor/BuildScript.cs) whose static Build() method calls
# BuildPipeline.BuildPlayer with an EXPLICIT scene list. -executeMethod points
# at that method; -buildTarget selects the platform (you cannot switch target
# inside the script in batch mode — see the manual page above).
#
# Usage:
#   ./build.sh <projectPath> <buildTarget> [outputPath] [methodName]
#
#   <projectPath>  absolute path to the Unity project (folder with Assets/)
#   <buildTarget>  e.g. StandaloneLinux64 | StandaloneWindows64 | StandaloneOSX | Android
#   [outputPath]   absolute output path (passed to the script as -out); optional
#   [methodName]   -executeMethod target; default BuildScript.Build
#
# In THIS environment no Unity Editor is installed, so unity.sh exits 127 with
# install instructions. That is EXPECTED here — this script reports the code and
# explains it. Install Unity 6 + set $UNITY_PATH to run a real build.

set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
UNITY="$HERE/unity.sh"

PROJECT="${1:-}"
TARGET="${2:-}"
OUT="${3:-}"
METHOD="${4:-BuildScript.Build}"

if [[ -z "$PROJECT" || -z "$TARGET" ]]; then
  echo "usage: $0 <projectPath> <buildTarget> [outputPath] [methodName]" >&2
  echo "  e.g. $0 /abs/MyGame StandaloneLinux64 /abs/out/MyGame.x86_64" >&2
  exit 2
fi

LOG="${PROJECT%/}/Logs/build_${TARGET}.log"
mkdir -p "$(dirname "$LOG")"

# Ensure the output directory exists (Unity does NOT create missing parent dirs
# for the build location).
if [[ -n "$OUT" ]]; then
  mkdir -p "$(dirname "$OUT")"
fi

# Assemble the args exactly as the manual documents. -batchmode -nographics
# -quit are the standard CI trio; -logFile captures the Editor log.
ARGS=(
  -batchmode
  -nographics
  -quit
  -projectPath "$PROJECT"
  -executeMethod "$METHOD"
  -buildTarget "$TARGET"
  -logFile "$LOG"
)
if [[ -n "$OUT" ]]; then
  ARGS+=( -out "$OUT" )
fi

echo "build.sh: invoking Unity ->"
echo "  unity.sh ${ARGS[*]}"
echo "  log: $LOG"

set +e
"$UNITY" "${ARGS[@]}"
CODE=$?
set -e

echo "build.sh: unity.sh exited with code $CODE"
case "$CODE" in
  0)
    echo "build.sh: build succeeded. Artifact at: ${OUT:-<default from BuildScript>}"
    ;;
  127)
    echo "build.sh: exit 127 == no Unity Editor found in this environment (EXPECTED here)."
    echo "          Install Unity 6 (6000.x) + the platform module for $TARGET, set"
    echo "          \$UNITY_PATH, and re-run. Until then this skill is doc-sourced only."
    ;;
  *)
    echo "build.sh: build FAILED (code $CODE). Read the Editor log for the real cause:"
    echo "          $LOG"
    echo "          Common causes: missing Editor module for $TARGET, empty scene list,"
    echo "          IL2CPP module not installed. See references/troubleshooting.md."
    ;;
esac

exit "$CODE"
