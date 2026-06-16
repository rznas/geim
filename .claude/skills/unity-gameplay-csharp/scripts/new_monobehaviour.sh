#!/usr/bin/env bash
# new_monobehaviour.sh — scaffold a correctly-formed MonoBehaviour .cs file.
#
# THE RULE this script enforces: the file name MUST equal the class name.
# Unity uses the file name as the class name on creation, and for a
# MonoBehaviour/ScriptableObject the file is what Unity attaches by name —
# a mismatch produces a warning (and "Can't add script ... name does not
# match" when you try to attach it in the Editor). See
# references/api/class-ScriptableObject.md ("The script file must have the
# same name as the class.") and the Manual's naming-scripts page.
#
# Writes the file only. Does NOT launch an editor, import, or compile
# (no Unity Editor is installed in this environment — see scripts/unity.sh).
#
# Usage:
#   new_monobehaviour.sh <ClassName> [outdir]
#
#   <ClassName>  PascalCase C# identifier, e.g. PlayerController.
#                The output file is always <ClassName>.cs (rule above).
#   [outdir]     Directory to write into. Default: current directory.
#                Conventionally <project>/Assets/Scripts.
#
# Examples:
#   new_monobehaviour.sh PlayerController ./Assets/Scripts
#   new_monobehaviour.sh EnemySpawner

set -euo pipefail

die() { echo "new_monobehaviour.sh: $*" >&2; exit 1; }

[[ $# -ge 1 ]] || die "usage: new_monobehaviour.sh <ClassName> [outdir]"

CLASS="$1"
OUTDIR="${2:-.}"

# Validate the class name is a legal C# identifier (letters/digits/_, not
# starting with a digit). A bad name here is the #1 cause of "name does not
# match" / "won't attach".
if ! [[ "$CLASS" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]]; then
  die "invalid class name '$CLASS' — must be a C# identifier (letters, digits, _; no leading digit, no spaces)."
fi

mkdir -p "$OUTDIR"
FILE="$OUTDIR/$CLASS.cs"   # file name == class name. Non-negotiable.

[[ -e "$FILE" ]] && die "$FILE already exists — refusing to overwrite."

cat > "$FILE" <<EOF
using System.Collections;
using UnityEngine;

// File name ($CLASS.cs) MUST match the class name ($CLASS) or Unity will not
// attach this component (warning / "Can't add script ... name does not match").
public class $CLASS : MonoBehaviour
{
    // [SerializeField] private exposes the field in the Inspector WITHOUT
    // making it public. Unity serializes public fields by default; for a
    // private field you must opt in with [SerializeField].
    // See references/api/SerializeField.md.
    [SerializeField] private float speed = 5f;

    // Awake: called once when the instance loads, before any Start. Use it to
    // set up references on THIS object. Runs even if the component is disabled.
    private void Awake()
    {
    }

    // OnEnable: called each time the component becomes enabled/active.
    private void OnEnable()
    {
    }

    // Start: called once, on the first frame this component is enabled, after
    // every object's Awake. Safe to read references other objects set in Awake.
    private void Start()
    {
    }

    // Update: called every rendered frame. Game logic, input polling. Scale
    // motion by Time.deltaTime so it is frame-rate independent.
    private void Update()
    {
    }

    // FixedUpdate: called on the fixed physics tick (Time.fixedDeltaTime).
    // Put Rigidbody / force / physics writes here, NOT in Update.
    private void FixedUpdate()
    {
    }

    // LateUpdate: called every frame after all Update calls. Camera follow,
    // anything that must read final positions for the frame.
    private void LateUpdate()
    {
    }

    // OnDisable: called when the component is disabled or its GameObject
    // deactivates. Coroutines on this object stop here. Unsubscribe events.
    private void OnDisable()
    {
    }

    // OnDestroy: called once when this object is being destroyed.
    private void OnDestroy()
    {
    }

    // Example coroutine. Start it with StartCoroutine(ExampleRoutine()).
    // A coroutine that is never StartCoroutine'd does nothing.
    private IEnumerator ExampleRoutine()
    {
        yield return new WaitForSeconds(1f);
    }
}
EOF

echo "Wrote $FILE (class $CLASS)."
echo "Reminder: keep the file name == class name if you rename either one."
