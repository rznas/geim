<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorStateMachine.AddStateMachineTransition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sourceStateMachine | The source state machine. |
| destinationStateMachine | The destination state machine. |
| destinationState | The destination state. |

### Returns

**AnimatorTransition** The AnimatorTransition transition that was created.

### Description

Utility function to add an outgoing transition from the source state machine to the destination.

The transition asset that is created is added as a sub asset of the state.
 An example showing usage of this API can be found at the AnimatorController page.
