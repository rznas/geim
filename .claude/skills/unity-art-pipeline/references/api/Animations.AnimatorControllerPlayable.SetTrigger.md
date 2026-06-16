<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimatorControllerPlayable.SetTrigger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The parameter name. |
| id | The parameter ID. |

### Description

Sets the value of the given trigger parameter.

This method allows you to set (i.e. activate) an animation trigger, to cause a change in flow in the state machine of an animator controller. The Animation Parameters page describes the purpose of the Animator Controller Parameters window. `Trigger` is one of the 4 selectable options. Selecting this adds a `Trigger` to the list of chosen parameters. Once this is added to the selected list it can be named. Unlike `bool`s which have the same `true/false` option, `Trigger`s have a `true` option which automatically returns back to `false`. A typical example might be to have a Jump option. If this option is entered during run-time the character will jump. At the end of the Jump the previous motion (perhaps a walk or run state) will be returned to.
