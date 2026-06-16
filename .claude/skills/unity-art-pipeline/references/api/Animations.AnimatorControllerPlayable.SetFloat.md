<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorControllerPlayable.SetFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The parameter name. |
| id | The parameter ID. |
| value | The new parameter value. |
| dampTime | The damper total time. |
| deltaTime | The delta time to give to the damper. |

### Description

Send float values to the AnimatorController to affect transitions.

Use SetFloat in a script to send float values to the AnimatorController in order to activate transitions. In the AnimatorController, define what values affect how certain animations transition. This is useful in various situations, especially in animation cycles such as movement animations where you might require the character to walk or run depending on the button pressure applied.
