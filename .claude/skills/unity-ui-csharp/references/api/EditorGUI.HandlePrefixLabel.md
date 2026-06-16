<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.HandlePrefixLabel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| totalPosition | Rectangle on the screen to use in total for both the label and the control. |
| labelPosition | Rectangle on the screen to use for the label. |
| label | Label to show for the control. |
| id | The unique ID of the control. If none specified, the ID of the following control is used. |
| style | Optional GUIStyle to use for the label. |

### Description

Makes a label for some control.

HandlePrefixLabel is like PrefixLabel but allows custom control over the label position by supplying its Rect explicitly. PrefixLabel or HandlePrefixLabel should be used when creating a control with a connected label. It ensures that when the label is clicked, the control will get keyboard focus. For this reason it is important that the same ID is supplied to PrefixLabel or HandlePrefixLabel as to the control itself. It is also possible to not supply a Control ID, in which case the one from the immediately following control is automatically used.
