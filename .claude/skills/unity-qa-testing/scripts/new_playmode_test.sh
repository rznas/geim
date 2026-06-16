#!/usr/bin/env bash
# new_playmode_test.sh — scaffold a Unity PlayMode test (UTF) into a project.
#
# Writes two files into <projectPath>/Assets/<dir>/:
#   <Name>.cs            — a [UnityTest] IEnumerator that spawns a GameObject,
#                          yields a frame (`yield return null`), then asserts.
#   <AsmName>.asmdef     — a PlayMode test assembly referencing the TestRunner
#                          assemblies + nunit.framework.dll, gated by
#                          UNITY_INCLUDE_TESTS so it is stripped from real builds.
#
# Files only — it does NOT run Unity (no Editor here). Compile/run it later with
# scripts/run_tests.sh once a Unity 6 Editor + $UNITY_PATH are available.
#
# The PlayMode test uses [UnityTest] returning IEnumerator on purpose: a plain
# [Test] cannot wait for a frame/physics step. See SKILL.md "the one thing".
#
# Grounded in:
#   references/api/unitytest-attribute.md          ([UnityTest] IEnumerator + yield)
#   references/api/edit-mode-vs-play-mode-tests.md (PlayMode asmdef conditions)
#   references/api/assembly-definition-file-format.md (TestRunner refs + UNITY_INCLUDE_TESTS)
#
# Usage:
#   new_playmode_test.sh <projectPath> [TestName] [asmName] [subdir]
#     projectPath  required — Unity project root (contains Assets/)
#     TestName     default: SmokeTest        (class + file name, PascalCase)
#     asmName      default: Game.PlayTests    (asmdef name)
#     subdir       default: Tests/PlayMode    (under Assets/)

set -euo pipefail

PROJ="${1:?usage: new_playmode_test.sh <projectPath> [TestName] [asmName] [subdir]}"
NAME="${2:-SmokeTest}"
ASM="${3:-Game.PlayTests}"
SUBDIR="${4:-Tests/PlayMode}"

DEST="$PROJ/Assets/$SUBDIR"
mkdir -p "$DEST"

CS="$DEST/$NAME.cs"
ASMDEF="$DEST/$ASM.asmdef"

# --- the test .cs -----------------------------------------------------------
# [UnityTest] + IEnumerator so `yield return null` can advance one frame, which
# a plain [Test] cannot do. Uses the NUnit Assert.That(... Is.* ...) constraint
# idiom shown verbatim in the Unity docs. Quoted heredoc (no shell expansion);
# __ASM__/__NAME__ placeholders are substituted afterward.
cat > "$CS" <<'CSHARP'
using System.Collections;
using NUnit.Framework;
using UnityEngine;
using UnityEngine.TestTools;

namespace __ASM__
{
    public class __NAME__
    {
        // Plain NUnit test: synchronous logic, no frame advance needed.
        [Test]
        public void GameObject_StartsAtOrigin()
        {
            var go = new GameObject("subject");
            Assert.That(go.transform.position, Is.EqualTo(Vector3.zero));
            Object.DestroyImmediate(go);
        }

        // PlayMode test: MUST be [UnityTest] returning IEnumerator so it can
        // `yield return null` to let one frame (Update + physics) run before
        // asserting. A [Test] here would assert on frame 0 and miss the change.
        [UnityTest]
        public IEnumerator FallingBody_MovesDown_AfterOneFrame()
        {
            var go = new GameObject("subject");
            go.AddComponent<Rigidbody>();           // gravity will pull it down
            var start = go.transform.position;

            yield return null;                       // advance exactly one frame

            Assert.That(go.transform.position.y, Is.LessThan(start.y),
                "Rigidbody should have fallen after one frame.");

            Object.Destroy(go);
        }
    }
}
CSHARP
# substitute placeholders without disturbing the C# braces/syntax
sed -i "s/__ASM__/${ASM}/g; s/__NAME__/${NAME}/g" "$CS"

# --- the PlayMode test asmdef -----------------------------------------------
# References that mark this as a test assembly (UnityEngine.TestRunner +
# UnityEditor.TestRunner) and pull in NUnit (nunit.framework.dll via
# precompiledReferences). Empty includePlatforms = PlayMode (runs in Editor or a
# Player); add your game's own asmdef name to "references" to test its code.
# UNITY_INCLUDE_TESTS keeps this assembly out of release builds.
cat > "$ASMDEF" <<'JSON'
{
    "name": "__ASM__",
    "rootNamespace": "__ASM__",
    "references": [
        "UnityEngine.TestRunner",
        "UnityEditor.TestRunner"
    ],
    "includePlatforms": [],
    "excludePlatforms": [],
    "allowUnsafeCode": false,
    "overrideReferences": true,
    "precompiledReferences": [
        "nunit.framework.dll"
    ],
    "autoReferenced": false,
    "defineConstraints": [
        "UNITY_INCLUDE_TESTS"
    ],
    "versionDefines": [],
    "noEngineReferences": false
}
JSON
sed -i "s/__ASM__/${ASM}/g" "$ASMDEF"

echo "Scaffolded PlayMode test:"
echo "  $CS"
echo "  $ASMDEF"
echo
echo "Next:"
echo "  - Add your game code's asmdef name to the asmdef \"references\" array"
echo "    so the test can see the code under test (test asmdefs cannot reference"
echo "    the predefined Assembly-CSharp.dll)."
echo "  - Run headless:  scripts/run_tests.sh \"$PROJ\" PlayMode results.xml"
