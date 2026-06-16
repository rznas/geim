<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateMachine.AddAnyStateTransition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| destinationState | The destination state. |
| destinationStateMachine | The destination statemachine. |

### Description

Utility function to add an AnyState transition to the specified state or statemachine.

The transition asset that is created is added as a sub asset of the state machine. Its important that AnyStateTransitions are added to the root state machine. AnyStateTranistions added to a sub state machine will be discarded at runtime. This function pushes an Undo operation.
