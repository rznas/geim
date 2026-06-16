<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.MultiPropertyField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to use for the multi-property field. |
| valuesIterator | The SerializedProperty of the first property to make a control for. |
| label | Optional label to use. If not specified the label of the property itself is used. Use GUIContent.none to not display a label at all. |
| subLabels | Array with small labels to show in front of each float field. There is room for one letter per field only. |
| visibility | Each SerializedProperty during iteration must have this visibility to be drawn. Use EditorGUI.PropertyVisibility.All to draw all SerializedProperties, regardless of its actual visibility. |

### Description

Makes a multi-control with several property fields in the same line.

The array of labels determine how many properties are shown. No more than 4 properties should be used. The displayed SerializedProperties must be consecutive. The one provided in the valuesIterator argument should be the first of them.
