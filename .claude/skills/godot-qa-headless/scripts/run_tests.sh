#!/usr/bin/env bash
# run_tests.sh — build, then run every test scene under res://tests/, aggregate.
#
# Each test scene's script should assert and call GetTree().Quit(failureCount).
# This runs them one by one, sums non-zero exit codes, and returns non-zero if
# any test failed — CI-friendly.
#
# Usage: run_tests.sh <projdir> [tests_subdir]   (default tests_subdir: tests)

set -euo pipefail
DIR="${1:?usage: run_tests.sh <projdir> [tests_subdir]}"
TESTS_SUB="${2:-tests}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

CSPROJ="$(ls "$DIR"/*.csproj 2>/dev/null | head -1)"
[[ -n "$CSPROJ" ]] || { echo "no .csproj in $DIR" >&2; exit 2; }

echo "==> Building (source generator + assembly must exist before running)"
dotnet build "$CSPROJ"

echo "==> Importing"
"$HERE/godot.sh" --headless --path "$DIR" --import >/dev/null

shopt -s nullglob
scenes=("$DIR/$TESTS_SUB"/*.tscn)
if [[ ${#scenes[@]} -eq 0 ]]; then
  echo "No test scenes in $DIR/$TESTS_SUB/ — nothing to run." >&2
  exit 0
fi

total_fail=0
for s in "${scenes[@]}"; do
  rel="res://$TESTS_SUB/$(basename "$s")"
  echo "==> $rel"
  set +e
  "$HERE/godot.sh" --headless --path "$DIR" "$rel"
  code=$?
  set -e
  if [[ $code -ne 0 ]]; then
    echo "    FAILED (exit $code)"
    total_fail=$((total_fail + code))
  else
    echo "    ok"
  fi
done

echo "==> Done. Total failures: $total_fail"
exit $(( total_fail > 0 ? 1 : 0 ))
