<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.ResetControllerState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| resetParameters | Set to true to also reset the controller parameters to their default values. When set to false, only the controller state is reset. |

### Description

Resets the AnimatorController to its default state.

Use this method to reset the layers in the AnimatorController to their default state.

```csharp
using UnityEngine;

// Press the Spacebar in Play Mode to reset the animator to the default state

[RequireComponent(typeof(Animator))]
public class AnimatorResetExample : MonoBehaviour
{
    // The Animator component on the GameObject this script is attached to.
    Animator m_Animator;

    void Start()
    {
        m_Animator = GetComponent<Animator>();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //This will reset the animator to the default state.
            m_Animator.ResetControllerState();
        }
    }
}
```
