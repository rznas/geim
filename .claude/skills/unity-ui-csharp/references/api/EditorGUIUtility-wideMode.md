<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility-wideMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is the Editor GUI currently in wide mode?

Wide mode is a mode for Editor GUI where the controls for structs such as Vector3 and Rect are inlined so they take up less vertical space. For example, in wide mode a Vector3Field takes up one line height instead of two, and a RectField takes up two line heights instead of three.

When creating your own multi-line controls, you can query wideMode and make the layout of your control follow the same logic.
