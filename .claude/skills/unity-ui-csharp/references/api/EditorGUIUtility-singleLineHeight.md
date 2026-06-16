<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility-singleLineHeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the height used for a single Editor control such as a one-line EditorGUI.TextField or EditorGUI.Popup.

When creating your own multi-line controls, such as controls for custom classes with multiple fields, you can use EditorGUILayout.GetControlRect and pass in a height value that is a multiple of EditorGUIUtility.singleLineHeight. This is advisable over hardcoding specific pixel values. Additional resources: EditorGUILayout.GetControlRect.
