<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.GraphOptions.DisableAutoInclusionOfNodesFromGraphAssembly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that nodes (i.e., subclasses of Node) defined in the same assembly as the graph are not automatically added to the graph item library.

By default, this flag is disabled. This allows you to discover nodes without manually annotating each one with UseWithGraphAttribute. Developers who want full control over what appears in the graph item library might choose to enable this option.
