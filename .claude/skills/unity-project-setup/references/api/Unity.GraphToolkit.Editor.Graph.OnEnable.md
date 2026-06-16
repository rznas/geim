<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Graph.OnEnable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when the graph is created or loaded in the editor.

Override this method to perform setup tasks, such as allocating resources, initializing internal state, or preparing data for editing. This method is invoked each time the graph becomes active in the editor, including after domain reload or when reopening the asset. This method complements OnDisable and is useful for maintaining consistency across editor sessions.
