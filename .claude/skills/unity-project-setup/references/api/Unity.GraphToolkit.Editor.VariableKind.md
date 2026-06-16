<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.VariableKind.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the scope of a IVariable.

The VariableKind enum defines the scope of a variable relative to subgraph usage. It determines whether a variable is scoped locally to the current graph, passed into the graph from a parent (Input), or exposed back to the parent (Output).

### Properties

| Property | Description |
| --- | --- |
| Local | A variable used only within the current graph. |
| Input | A variable used as an input to a subgraph. |
| Output | A variable used as an output from a subgraph. |
