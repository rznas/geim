<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateMachine.RemoveEntryTransition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| transition | The transition to remove. |

### Description

Utility function to remove an entry transition from the state machine.

If the transition is a sub asset of the state machine, it will be deleted. This function pushes an Undo operation.
