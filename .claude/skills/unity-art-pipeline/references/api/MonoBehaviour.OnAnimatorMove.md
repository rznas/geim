<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnAnimatorMove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback for processing animation movements for modifying root motion.

This callback will be invoked at each frame after the state machines and the animations have been evaluated, but before OnAnimatorIK.

Additional resources: Root motion.

```csharp
// Attach this script to your character GameObject that has an Animator and optionally a Rigidbody.
// Enable "Apply Root Motion" on the Animator. Adjust rootMotionMultiplier to speed up or slow down root motion.using UnityEngine;[RequireComponent(typeof(Animator))]
public class RootMotionModifier : MonoBehaviour
{
    public float rootMotionMultiplier = 2.0f; // Scale the root motion    private Animator animator;
    private Rigidbody rb;    void Awake()
    {
        animator = GetComponent<Animator>();
        rb = GetComponent<Rigidbody>();
    }    void OnAnimatorMove()
    {
        // Only modify root motion if we have a Rigidbody
        if (rb != null)
        {
            // Get the deltaPosition from the Animator
            Vector3 deltaPosition = animator.deltaPosition * rootMotionMultiplier;
            // Preserve vertical velocity (for example, gravity)
            Vector3 velocity = deltaPosition / Time.deltaTime;
            velocity.y = rb.velocity.y;
            rb.velocity = velocity;            // Optionally apply root rotation
            rb.MoveRotation(rb.rotation * animator.deltaRotation);
        }
        else
        {
            // If no Rigidbody, just move the transform
            transform.position += animator.deltaPosition * rootMotionMultiplier;
            transform.rotation *= animator.deltaRotation;
        }
    }
}
```
