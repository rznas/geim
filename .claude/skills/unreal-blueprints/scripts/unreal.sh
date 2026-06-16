#!/usr/bin/env bash
# unreal.sh — resolve the Unreal Engine 5 toolchain (UnrealEditor / UBT / RunUAT)
# and forward args. Every unreal-* skill that runs the engine calls it through
# this wrapper so the install path lives in one place.
#
# Resolution: $UE_ROOT env var → common install locations → fail with instructions.
# $UE_ROOT must point at the engine root (the dir containing Engine/).
#
# Subcommands (thin routing over the real tools):
#   unreal.sh editor   <args...>   -> Engine/Binaries/Linux/UnrealEditor
#   unreal.sh build    <args...>   -> Engine/Build/BatchFiles/Linux/Build.sh (UBT)
#   unreal.sh uat      <args...>   -> Engine/Build/BatchFiles/RunUAT.sh (BuildCookRun etc.)
#   unreal.sh gencproj <args...>   -> GenerateProjectFiles.sh
#   unreal.sh root                 -> print the resolved engine root
#
# NOTE: no Unreal Engine is installed in THIS environment, so the wrapper exits
# 127 with install guidance. The unreal-* skills are doc-sourced (grounded in the
# embedded UE 5.6/5.7 documentation Markdown) and were NOT compile-tested here.
# Install UE 5.7 (Epic Games Launcher or source build) and set $UE_ROOT to enable
# real UBT compile / editor-commandlet / packaging verification.

set -euo pipefail

resolve_root() {
  if [[ -n "${UE_ROOT:-}" && -d "${UE_ROOT}/Engine" ]]; then echo "$UE_ROOT"; return 0; fi
  local c
  for c in \
    "$HOME"/UnrealEngine \
    /opt/UnrealEngine \
    "$HOME"/Epic/UE_5.* \
    /opt/Epic/UE_5.* \
    "$HOME"/Documents/Epic/UE_5.*; do
    if [[ -d "$c/Engine" ]]; then echo "$c"; return 0; fi
  done
  return 1
}

if ! ROOT="$(resolve_root)"; then
  {
    echo "unreal.sh: no Unreal Engine install found."
    echo "  Looked at: \$UE_ROOT and common UE_5.x locations."
    echo "  Install Unreal Engine 5.7 (Epic Games Launcher or a source build), then:"
    echo "    export UE_ROOT=/path/to/UnrealEngine   # the dir containing Engine/"
    echo "  Until then the unreal-* skills are doc-sourced, not compile-tested here."
  } >&2
  exit 127
fi

cmd="${1:-}"; shift || true
case "$cmd" in
  root)     echo "$ROOT" ;;
  editor)   exec "$ROOT/Engine/Binaries/Linux/UnrealEditor" "$@" ;;
  build)    exec "$ROOT/Engine/Build/BatchFiles/Linux/Build.sh" "$@" ;;
  uat)      exec "$ROOT/Engine/Build/BatchFiles/RunUAT.sh" "$@" ;;
  gencproj) exec "$ROOT/Engine/Build/BatchFiles/Linux/GenerateProjectFiles.sh" "$@" ;;
  *)
    echo "unreal.sh: unknown subcommand '${cmd}'." >&2
    echo "  Use: editor | build | uat | gencproj | root" >&2
    exit 2 ;;
esac
