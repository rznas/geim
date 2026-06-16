<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorControllerPlayable.ResetControllerState.html
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
using System;
using UnityEngine;
using UnityEngine.Animations;
using UnityEngine.Playables;

// Press the Spacebar in Play Mode to reset the AnimatorController to the default state
[RequireComponent(typeof(Animator))]
public class AnimatorControllerPlayableResetExample : MonoBehaviour
{
    // The AnimatorController to be used with the Animator component.
    public RuntimeAnimatorController m_Controller;

    Animator m_Animator;
    AnimatorControllerPlayable m_ControllerPlayable;

    void Start()
    {
        m_Animator = GetComponent<Animator>();

        // Set up the PlayableGraph and AnimatorControllerPlayable and play the graph.
        var graph = PlayableGraph.Create(nameof(AnimatorControllerPlayableResetExample));
        m_ControllerPlayable = AnimatorControllerPlayable.Create(graph, m_Controller);
        var output = AnimationPlayableOutput.Create(graph, nameof(AnimatorControllerPlayableResetExample), m_Animator);
        output.SetSourcePlayable(m_ControllerPlayable);
        graph.Play();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //This will reset the AnimatorController to the default state.
            m_ControllerPlayable.ResetControllerState();
        }
    }

    void OnDestroy()
    {
        // Destroy the PlayableGraph when the GameObject is destroyed.
        m_ControllerPlayable.GetGraph().Destroy();
    }
}
```
