<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorControllerPlayable.SetInteger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The parameter name. |
| id | The parameter ID. |
| value | The new parameter value. |

### Description

Sets the value of the given integer parameter.

Use this as a way to trigger transitions between Animator states. One way of using Integers instead of Floats or Booleans is to use it for something that has multiple states, for example directions (turn left, turn right etc.). Each direction could correspond to a number instead of having multiple Booleans that have to be reset each time.

See documentation on Animation for more information on setting up Animators.

Note: You can identify the parameter by name or by ID number, but the name or ID number must be the same as the parameter you want to change in the AnimatorController.
