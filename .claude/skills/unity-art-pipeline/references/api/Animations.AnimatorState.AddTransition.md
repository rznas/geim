<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorState.AddTransition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| defaultExitTime | If true, the exit time will be the equivalent of 0.25 second. |
| destinationState | The destination state. |

### Description

Utility function to add an outgoing transition to the destination state.

The transition asset that is created is added as a sub asset of the state. This function pushes an Undo operation.

### Parameters

| Parameter | Description |
| --- | --- |
| defaultExitTime | If true, the exit time will be the equivalent of 0.25 second. |
| destinationStateMachine | The destination state machine. |

### Description

Utility function to add an outgoing transition to the destination state machine.

The transition asset that is created is added as a sub asset of the state. This function pushes an Undo operation.

### Parameters

| Parameter | Description |
| --- | --- |
| transition | The transition to add. |

### Description

Utility function to add an outgoing transition.

This function pushes an Undo operation.
