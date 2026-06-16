<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateMachine.RemoveAnyStateTransition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transition | The AnyStat transition to remove. |

### Description

Utility function to remove an AnyState transition from the state machine.

If the transition is a sub asset of the state machine, it will be deleted. This function pushes an Undo operation.
