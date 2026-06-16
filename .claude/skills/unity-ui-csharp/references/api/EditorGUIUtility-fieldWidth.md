<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility-fieldWidth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The minimum width in pixels reserved for the fields of Editor GUI controls.

Most Editor GUI controls consist of a label as well as the control field itself. The minimum width of the field is controlled by the fieldWidth value. Fields often appear wider than the minimum width, since Editor GUI controls are usually set to occupy a Rect that expands to fill the available horizontal space. Within this Rect, the field will take up all the space not used by the EditorGUIUtility.labelWidth.

The fieldWidth also controls the width of the text field in EditorGUI.Slider controls.
