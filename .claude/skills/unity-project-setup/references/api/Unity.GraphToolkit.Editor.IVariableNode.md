<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IVariableNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for a variable node, which is a specialized node that references a IVariable defined in the graph.

Variable nodes represent a reference to a declared IVariable in the graph. They are distinct from IVariables, which are declarations displayed as capsules in the graph’s Blackboard. You can drag and drop a IVariable from the Blackboard into the graph canvas to create a variable node. The variable node is an instance of the declared IVariable and appears in the graph.

### Properties

| Property | Description |
| --- | --- |
| Variable | Retrieves the IVariable associated with the node. |
