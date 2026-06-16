<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Graph.OnDisable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when the graph is unloaded, or goes out of scope in the editor.

Unity calls this method when the graph is disabled, or is destroyed. Override this method to release resources, clear temporary data, or perform any required cleanup. This method complements OnEnable and is useful for maintaining consistency across editor sessions.
