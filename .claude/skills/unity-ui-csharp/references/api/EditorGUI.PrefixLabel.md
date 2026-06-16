<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.PrefixLabel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| totalPosition | Rectangle on the screen to use in total for both the label and the control. |
| id | The unique ID of the control. If none specified, the ID of the following control is used. |
| label | Label to show in front of the control. |
| style | Style to use for the label. |

### Returns

**Rect** Rectangle on the screen to use just for the control itself.

### Description

Makes a label in front of some control.

*Prefix Label in an Editor Window.*

Note that most editor controls already have built-in optional labels that can be specified as one of the parameters. PrefixLabel can be used when there is no such built-in label available, or when you're creating your own editor control from scratch.

PrefixLabel takes a rect that's the rect for the entire control, including the label, and returns a rect that's for just the control itself, without the label.

PrefixLabel also ensures that when the label is clicked, the linked control will get keyboard focus (if the control supports keyboard focus). The ID of the linked control can optionally be specified, or if no ID is given, the label is automatically linked to the following control coming after it.
