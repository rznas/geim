<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.SetLookAtPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lookAtPosition | The position in the world space to look at. |

### Description

Sets the look at position for a character during animations.

Use this method in conjunction with Animator.SetLookAtWeight to determine how strongly the character should look toward the specified position.

You can only call Animator.SetLookAtPosition from the MonoBehaviour.OnAnimatorIK or StateMachineBehaviour.OnStateIK callback. If called from a different context, this method has no effect and issues a warning.

Additional resources: Animator.SetLookAtWeight, MonoBehaviour.OnAnimatorIK, StateMachineBehaviour.OnStateIK.

```csharp
using UnityEngine;

[RequireComponent(typeof(Animator))]
public class SetLookAtPositionExample : MonoBehaviour
{
    // The target to look at
    public Transform target;

    // The weight of the look at. This will determine how much the character will look at the target
    [Range(0, 1)]
    public float weight = 1f;

    Animator m_Animator;

    void Awake()
    {
        m_Animator = GetComponent<Animator>();

        if (target == null)
        {
            Debug.LogError("Target is not set. Please set the target to look at.");
        }
    }

    void OnAnimatorIK(int layerIndex)
    {
        if (m_Animator == null || target == null)
        {
            return;
        }

        // Set the look at weight
        m_Animator.SetLookAtWeight(weight);

        // Set the look at position to the target's position
        m_Animator.SetLookAtPosition(target.position);
    }
}
```
