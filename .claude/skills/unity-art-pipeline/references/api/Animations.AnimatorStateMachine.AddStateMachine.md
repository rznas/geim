<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateMachine.AddStateMachine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the new state machine. |
| position | The position of the state machine node. |

### Returns

**AnimatorStateMachine** The newly created AnimatorStateMachine state machine.

### Description

Utility function to add a state machine to the state machine.

The state machine asset that is created is added as a sub asset of the state machine.
 An example showing usage of this API can be found at the AnimatorController page.

### Parameters

| Parameter | Description |
| --- | --- |
| stateMachine | The state machine to add. |
| position | The position of the state machine node. |

### Description

Utility function to add a state machine to the state machine.

This function pushes an Undo operation.
