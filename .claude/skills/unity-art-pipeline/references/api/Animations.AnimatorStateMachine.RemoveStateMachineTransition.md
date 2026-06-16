<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateMachine.RemoveStateMachineTransition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transition | The transition to remove. |
| sourceStateMachine | The source state machine. |

### Description

Utility function to remove an outgoing transition from source state machine.

If the transition is a sub asset of the state machine, it will be deleted. This function pushes an Undo operation.
