<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateMachine.AddState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the new state. |
| position | The position of the state node. |

### Returns

**AnimatorState** The AnimatorState that was created for this state.

### Description

Utility function to add a state to the state machine.

The state asset that is created is added as a sub asset of the state machine. The API returns an AnimatorState which you can use to add transitions.
 An example showing usage of this API can be found at the AnimatorController page.

### Parameters

| Parameter | Description |
| --- | --- |
| state | The state to add. |
| position | The position of the state node. |

### Description

Utility function to add a state to the state machine.

This function pushes an Undo operation.
