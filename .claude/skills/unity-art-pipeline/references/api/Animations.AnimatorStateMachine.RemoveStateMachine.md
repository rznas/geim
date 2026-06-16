<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateMachine.RemoveStateMachine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stateMachine | The state machine to remove. |

### Description

Utility function to remove a state machine from its parent state machine.

If the state machine is a sub asset of the parent state machine, it will be deleted. This function pushes an Undo operation.
