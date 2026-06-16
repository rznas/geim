#!/usr/bin/env bash
# run_tests.sh — run Unity Test Framework tests headless and report the result.
#
# Wraps the shared editor wrapper (_tools/unity.sh, copied here as scripts/
# unity.sh) with the UTF command-line runner flags:
#
#   unity.sh -batchmode -nographics -runTests \
#            -projectPath <proj> -testPlatform <EditMode|PlayMode> \
#            -testResults <xml>
#
# Grounded in:
#   references/api/run-tests-from-command-line.md  (the -runTests -batchmode invocation)
#   references/api/reference-command-line.md       (-testPlatform / -testResults semantics)
#   references/api/EditorCommandLineArguments.md    (-batchmode exits 1 on failure; -nographics)
#
# IMPORTANT GOTCHAS (see SKILL.md / references/cli_and_ci.md):
#   * Do NOT pass -quit: it is NOT supported while tests run. The Editor quits
#     itself when the run finishes.
#   * EXIT CODE is the pass/fail signal for CI: 0 = all passed; non-zero
#     (typically 1) = failures, compile errors, or a crash. Always also parse
#     <xml> to tell a real test failure from a compile error.
#   * In THIS environment there is no Unity Editor, so unity.sh exits 127 with
#     install instructions — that is expected here, not a test failure.
#
# Usage:
#   run_tests.sh <projectPath> [EditMode|PlayMode] [resultsXml] [extra unity args...]
#     projectPath  required
#     platform     default: PlayMode
#     resultsXml   default: <projectPath>/test-results-<platform>.xml

set -uo pipefail   # not -e: we want to capture and report Unity's exit code

PROJ="${1:?usage: run_tests.sh <projectPath> [EditMode|PlayMode] [resultsXml] [extra args...]}"
PLATFORM="${2:-PlayMode}"
RESULTS="${3:-$PROJ/test-results-$PLATFORM.xml}"
shift || true; shift || true; shift || true   # remaining $@ = extra unity args

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

case "$PLATFORM" in
  EditMode|PlayMode) ;;
  *) echo "warn: -testPlatform '$PLATFORM' is neither EditMode nor PlayMode;" \
          "passing through (a BuildTarget runs PlayMode tests on a Player)." >&2 ;;
esac

echo "==> Running $PLATFORM tests headless"
echo "    project : $PROJ"
echo "    results : $RESULTS"

# -batchmode -nographics for CI; -runTests starts the run; NO -quit (unsupported
# during a test run — the Editor exits on its own when the run completes).
"$HERE/unity.sh" \
  -batchmode \
  -nographics \
  -runTests \
  -projectPath "$PROJ" \
  -testPlatform "$PLATFORM" \
  -testResults "$RESULTS" \
  -logFile - \
  "$@"
CODE=$?

echo "==> Unity exited with code $CODE"

if [[ $CODE -eq 127 ]]; then
  echo "    (127 = no Unity Editor on this machine — expected in this environment." >&2
  echo "     Install Unity 6 + set \$UNITY_PATH to actually run tests.)" >&2
  exit 127
fi

# Summarise the NUnit results.xml when present. The root <test-run> element
# carries total/passed/failed counts. (Plain grep so no XML deps are required.)
if [[ -f "$RESULTS" ]]; then
  echo "==> Results summary ($RESULTS):"
  head -c 4000 "$RESULTS" | grep -oE '(total|passed|failed|skipped|result)="[^"]*"' | head -12 || true
  if grep -q 'result="Failed"' "$RESULTS"; then
    echo "    -> at least one test FAILED"
  fi
else
  echo "    no results file written — likely a COMPILE ERROR before tests ran." >&2
  echo "    Check the log above for CS#### errors. (CLI non-zero + no XML = compile error.)" >&2
fi

# Exit code is the authoritative pass/fail gate for CI.
exit $CODE
