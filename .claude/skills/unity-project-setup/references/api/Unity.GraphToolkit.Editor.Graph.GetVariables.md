<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Graph.GetVariables.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IEnumerable<IVariable>** An `IEnumerable` of all IVariables declared in the graph.

### Description

Retrieves all variables declared in the graph.

Use this method to enumerate all IVariables declared in the graph. This list does not include variable nodes that reference variables. The collection reflects the variables as declared, in their order of creation.
