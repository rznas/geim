<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.MultiIntField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the integer field. |
| subLabels | Array with small labels to show in front of each int field. There is room for one letter per field only. |
| values | Array with the values to edit. |

### Description

Makes a multi-control with text fields for entering multiple integers in the same line.

The height of the multi-control depends on the total width of its editor window. The control is drawn within the specified rectangle (position). If the control does not fit, it is drawn outside the rectangle. Additional resources: EditorGUIUtility.wideMode.
