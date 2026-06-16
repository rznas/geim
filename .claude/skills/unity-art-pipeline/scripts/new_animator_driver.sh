#!/usr/bin/env bash
# new_animator_driver.sh — scaffold a MonoBehaviour that drives an Animator
# through its CONTROLLER PARAMETERS (the idiomatic Unity locomotion driver).
#
#   ./new_animator_driver.sh <ClassName> [output-dir]
#
# Produces <output-dir>/<ClassName>.cs: a component that reads input each frame
# and pushes it into the Animator via SetFloat/SetBool/SetTrigger. You do NOT
# play clips directly — the AnimatorController's transitions/blend trees decide
# which clip plays based on these parameters (Animator.SetFloat / SetBool /
# SetTrigger, doc-sourced from references/api/Animator.SetFloat.md etc.).
#
# File-only: no Unity Editor required. The parameter NAMES below are placeholders
# ("Speed", "Grounded", "Jump") — they must EXACTLY match the parameters you
# created in the Animator Controller, or the calls silently do nothing.
#
# Doc-sourced from the embedded Unity 6 (6000.x) ScriptReference; NOT compile-tested
# here (no Editor installed).

set -euo pipefail

CLASS="${1:-}"
OUTDIR="${2:-.}"

if [[ -z "$CLASS" ]]; then
  echo "usage: $0 <ClassName> [output-dir]" >&2
  exit 2
fi
if ! [[ "$CLASS" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]]; then
  echo "error: '$CLASS' is not a valid C# identifier (and Unity requires the" >&2
  echo "       file name to match the class name exactly)." >&2
  exit 2
fi

mkdir -p "$OUTDIR"
OUT="$OUTDIR/$CLASS.cs"

cat > "$OUT" <<EOF
using UnityEngine;

// $CLASS — drives an Animator through its CONTROLLER PARAMETERS.
//
// THE UNITY MODEL: you do not "play the run clip". You push state into the
// Animator's parameters (SetFloat/SetBool/SetTrigger); the AnimatorController's
// transitions and blend trees decide which clip(s) play. Wire the parameters
// below in the Animator window FIRST — the string names must match EXACTLY
// (case-sensitive) or the calls compile fine and do nothing.
//
// Requires an Animator component on this GameObject with an AnimatorController
// assigned. Humanoid clips additionally need an Avatar on the model's import
// (Rig tab -> Animation Type = Humanoid) and on the Animator.
[RequireComponent(typeof(Animator))]
public class $CLASS : MonoBehaviour
{
    // Cache parameter hashes once (Animator.StringToHash) — faster than passing
    // strings every frame, and the canonical Unity idiom.
    static readonly int SpeedHash    = Animator.StringToHash("Speed");
    static readonly int GroundedHash = Animator.StringToHash("Grounded");
    static readonly int JumpHash     = Animator.StringToHash("Jump");

    [Tooltip("How fast Speed eases toward the target (damping seconds).")]
    [SerializeField] float speedDampTime = 0.1f;

    Animator m_Animator;

    void Awake()
    {
        // GetComponent<T>() is the Unity way to grab a sibling component.
        m_Animator = GetComponent<Animator>();
    }

    void Update()
    {
        // --- Float parameter: blend-tree input (idle <-> walk <-> run) ---
        // Map your real movement here; this uses the default Horizontal axis.
        float speed = Mathf.Abs(Input.GetAxis("Horizontal"))
                    + Mathf.Abs(Input.GetAxis("Vertical"));
        // Damped overload smooths the transition so the blend tree doesn't pop.
        m_Animator.SetFloat(SpeedHash, speed, speedDampTime, Time.deltaTime);

        // --- Bool parameter: a sustained state (e.g. on the ground) ---
        // Replace with your real grounded check (e.g. a CharacterController).
        bool grounded = true;
        m_Animator.SetBool(GroundedHash, grounded);

        // --- Trigger parameter: a one-shot action (consumed by a transition) ---
        // A Trigger auto-resets to false once a transition consumes it.
        if (Input.GetButtonDown("Jump"))
        {
            m_Animator.SetTrigger(JumpHash);
        }
    }
}
EOF

echo "wrote $OUT"
echo
echo "Next steps (in the Editor / Animator window):"
echo "  1. Create an AnimatorController and assign it to this GameObject's Animator."
echo "  2. Add parameters named EXACTLY: Speed (Float), Grounded (Bool), Jump (Trigger)."
echo "  3. Build states + transitions (or a 1D blend tree on Speed) that USE them."
echo "     A parameter with no transition condition referencing it does nothing."
