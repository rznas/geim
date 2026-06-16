<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorStateInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Runtime information on the current or next animation state, managed by an Animator.

Use this struct to obtain information on the current animation state and its transitions. This information includes the name, duration, speed, and the looping status.

You can also use `AnimatorStateInfo` to control animation timing and to handle blending, state changes, and event timing.

 Additional resources: Animator, AnimatorController, Animator.StringToHash.

The following example demonstrates how to use `AnimatorStateInfo` to manage transitions and adjust playback in real-time.

```csharp
// This script demonstrate using AnimatorStateInfo to modify a parameter during animation.
// Ensure Animator has a "Run" state in Base Layer and a "SpeedMultiplier" parameter.

using UnityEngine;

[RequireComponent(typeof(Animator))]
public class AnimatorStateInfoExample : MonoBehaviour
{
    private Animator m_Animator;
    private readonly int m_RunStateHash = Animator.StringToHash("Base Layer.Run");

    void Start()
    {
        m_Animator = GetComponent<Animator>();
    }

    void Update()
    {
        // Retrieve the current animation state information
        AnimatorStateInfo stateInfo = m_Animator.GetCurrentAnimatorStateInfo(0);

        // Use the hashed name for comparison with the current state's full path hash
        if (stateInfo.fullPathHash == m_RunStateHash)
        {
            Debug.Log("Running state active. Normalized time: " + stateInfo.normalizedTime);

            // Perform actions based on the animation's progress
            if (stateInfo.normalizedTime > 0.5f && stateInfo.normalizedTime < 0.75f)
            {
                Debug.Log("Halfway through the Run animation.");
                m_Animator.SetFloat("SpeedMultiplier", 1.5f); // Adjust the playback speed
            }
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| fullPathHash | The full path hash for this state. |
| length | Current duration of the state. |
| loop | Is the state looping. |
| normalizedTime | Normalized time of the State. |
| shortNameHash | The hash is generated using Animator.StringToHash. The hash does not include the name of the parent layer. |
| speed | The playback speed of the animation. 1 is the normal playback speed. |
| speedMultiplier | The speed multiplier for this state. |
| tagHash | The Tag of the State. |

### Public Methods

| Method | Description |
| --- | --- |
| IsName | Checks if name matches the name of the active state in the state machine. |
| IsTag | Checks whether the animation state has the specified tag. |
