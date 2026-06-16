#!/usr/bin/env bash
# package.sh — package a UE 5.6/5.7 project via RunUAT BuildCookRun
# (build + cook + stage + package), through the shared unreal.sh wrapper.
#
# Packaging is RunUAT's BuildCookRun command, NOT a copy of the editor's build
# folder: it Builds the executables, Cooks content to the platform's runtime
# format, Stages to a clean dir, and Packages a distributable. Grounded in
#   references/api/...Build_Operations_Cook,_Package,_Deploy,_and_Run.md
#   references/api/...Linux_Development_Quickstart.md  (the BuildCookRun example)
#
# Usage: package.sh <project.uproject> [platform] [clientconfig]
#   platform      default Linux   (Linux | Win64 | Mac | ... )
#   clientconfig  default Shipping (Development | Shipping | Test | DebugGame)
#
# NOTE: no Unreal Engine is installed here, so unreal.sh exits 127 with install
# guidance — this script forwards that code and explains it. Set $UE_ROOT and
# re-run for a real package.

set -euo pipefail

PROJECT="${1:-}"
PLATFORM="${2:-Linux}"
CONFIG="${3:-Shipping}"

if [[ -z "$PROJECT" ]]; then
  echo "usage: $(basename "$0") <project.uproject> [platform=Linux] [clientconfig=Shipping]" >&2
  exit 2
fi
if [[ ! -f "$PROJECT" ]]; then
  echo "warning: project file not found: $PROJECT (continuing — UAT will validate)" >&2
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
UNREAL="${SCRIPT_DIR}/unreal.sh"

echo "package.sh: RunUAT BuildCookRun"
echo "  project      = ${PROJECT}"
echo "  platform     = ${PLATFORM}"
echo "  clientconfig = ${CONFIG}"
echo "  -build -cook -stage -package"
echo

set +e
"$UNREAL" uat BuildCookRun \
  "-project=${PROJECT}" \
  "-platform=${PLATFORM}" \
  "-clientconfig=${CONFIG}" \
  -build -cook -stage -package -nop4 -utf8output
rc=$?
set -e

echo
if [[ $rc -eq 127 ]]; then
  echo "package.sh: exit 127 — no Unreal Engine installed in this environment."
  echo "  This is expected here. Install UE 5.7 and 'export UE_ROOT=/path/to/UnrealEngine',"
  echo "  then re-run for a real packaged build (staged output under <Project>/Saved/StagedBuilds/)."
elif [[ $rc -ne 0 ]]; then
  echo "package.sh: BuildCookRun failed (exit ${rc}). Check the UAT log for the failing stage"
  echo "  (Build / Cook / Stage / Package). See references/troubleshooting.md."
else
  echo "package.sh: BuildCookRun succeeded. Staged output under <Project>/Saved/StagedBuilds/."
fi
exit $rc
