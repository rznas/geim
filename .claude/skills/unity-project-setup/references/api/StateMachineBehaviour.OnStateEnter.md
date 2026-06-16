<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StateMachineBehaviour.OnStateEnter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| animator | The Animator evaluating this state machine. |
| animatorStateInfo | Information about the entered state. |
| layerIndex | The current layer being evaluated. |

### Description

Invoked on the first update frame when a state machine evaluates this state. Implement this message to react to a new state starting.

OnStateEnter is invoked when a transition to a state is initiated. It will be invoked after OnStateUpdate of the current state. 
**Note**: OnStateEnter may be invoked multiple times on the same state if that state is synchronized on multiple layers.
