<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorState.AddExitTransition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| defaultExitTime | If true, the exit time will be the equivalent of 0.25 second. |

### Returns

**AnimatorStateTransition** The AnimatorStateTransition that was added.

### Description

Utility function to add an outgoing transition to the exit of the state's parent state machine.

The transition asset that is created is added as a sub asset of the state.
 An example showing usage of this API can be found at the AnimatorController page.
