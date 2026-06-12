#!/usr/bin/env bash
# build_and_check.sh — compile a Godot C# project and verify it imports clean.
#
# Two gates, in order:
#   1. dotnet build         — C# compiles, assemblies land in .godot/mono/temp/bin
#   2. godot --headless --import — Godot parses every resource without error
#
# Exits non-zero on the first failure. Use this in CI and after any scaffold or
# script change. It is the cheapest "is the project still valid?" check.
#
# Usage: build_and_check.sh <project_dir>

set -euo pipefail
DIR="${1:?usage: build_and_check.sh <project_dir>}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

CSPROJ="$(ls "$DIR"/*.csproj 2>/dev/null | head -1)"
if [[ -z "$CSPROJ" ]]; then
  echo "build_and_check: no .csproj in $DIR" >&2
  exit 2
fi

echo "==> dotnet build $CSPROJ"
dotnet build "$CSPROJ"

echo "==> godot --headless --import ($DIR)"
# --import implies --editor --quit; a clean import returns 0.
"$HERE/godot.sh" --headless --path "$DIR" --import

echo "OK: build + import clean."
