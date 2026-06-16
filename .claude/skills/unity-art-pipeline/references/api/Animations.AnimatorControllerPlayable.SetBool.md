<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorControllerPlayable.SetBool.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The parameter name. |
| id | The parameter ID. |
| value | The new parameter value. |

### Description

Sets the value of the given boolean parameter.

Use AnimatorControllerPlayable.SetBool to pass Boolean values to an Animator Controller via script.

Use this to trigger transitions between states. For example, triggering a death animation by setting an “alive” boolean to false. See documentation on Animation for more information on setting up Animators.

Note: You can identify the parameter by name or by ID number, but the name or ID number must be the same as the parameter you want to change in the AnimatorController.
