<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StateMachineBehaviour.OnStateExit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| animator | The Animator evaluating this state machine. |
| animatorStateInfo | Information about the exited state. |
| layerIndex | The current layer being evaluated. |

### Description

Invoked on the last update frame when a state machine evaluates this state. Implement this message to react to a state ending.

OnStateExit is invoked when a transition to a state has completed or has been interrupted. It will be invoked before OnStateUpdate of the next state. 
**Note**: OnStateExit may be invoked multiple times on the same state if that state is synchronized on multiple layers.
