<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimatorStateInfo.IsName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name to check. |

### Returns

**bool** True if the animation state has the given name, false otherwise.

### Description

Checks if `name` matches the name of the active state in the state machine.

The name should be in the form *Layer.Name* or *Layer.SubStateMachine.Name*. For example, `Base.Idle` or `Base.RunSM.JogForward`.

This method calls Animator.StringToHash on the name parameter and compares it to AnimatorStateInfo.shortNameHash and AnimatorStateInfo.fullPathHash internally. If you call this method often, consider precomputing the hash of the name to improve performance.

```csharp
// This script demonstrates how to check if the current state of an Animator has a specific name.

using UnityEngine;

[RequireComponent(typeof(Animator))]
public class AnimatorStateInfoIsNameExample : MonoBehaviour
{
    // The Animator component on the GameObject this script is attached to.
    Animator m_Animator;

    void Start()
    {
        m_Animator = GetComponent<Animator>();
    }

    void Update()
    {
        // If the current state has the specified name, log a message.
        var stateInfo = m_Animator.GetCurrentAnimatorStateInfo(0);
        if (stateInfo.IsName("Base.Idle"))
        {
            Debug.Log($"Currently in state Base.Idle.");
        }
    }
}
```

Additional resources: Animator.StringToHash , AnimatorStateInfo.IsTag.
