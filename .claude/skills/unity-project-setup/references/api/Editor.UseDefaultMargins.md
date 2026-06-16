<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.UseDefaultMargins.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Override this method in subclasses to return false if you don't want default margins.

By default, content in the Inspector has a large left margin and a small right margin. This is because the entire Editor.OnInspectorGUI callback is wrapped in a vertical group with the EditorStyles.inspectorDefaultMargins style. For a consistent look, these default margins should be used for most GUI with regular controls.

However, some special GUI elements may benefit from occupying the full width of the Inspector, with only a small margin in both sides. To disable the default margins, override the Editor.UseDefaultMargins method in your custom Editor and make it return false. Then you can wrap your GUI content inside a vertical groups to your liking. For example, you can wrap some of the GUI inside a vertical group with the EditorStyles.inspectorFullWidthMargins style and wrap other parts of the GUI inside a vertical group with the EditorStyles.inspectorDefaultMargins style.

Additional resources: EditorGUILayout.BeginVertical, EditorGUILayout.EndVertical, EditorStyles.inspectorDefaultMargins, EditorStyles.inspectorFullWidthMargins.
