<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateMachine.AddStateMachineExitTransition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sourceStateMachine | The source state machine. |

### Description

Utility function to add an outgoing transition from the source state machine to the exit of it's parent state machine.

The transition asset that is created is added as a sub asset of the state. This function pushes an Undo operation.
