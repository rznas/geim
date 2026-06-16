<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Graph.GetNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The zero-based index of the node to retrieve. |

### Returns

**INode** The INode at the specified index.

### Description

Retrieves a node defined in the graph by its index.

Use this method to access a node based on its creation order in the graph. The index is zero-based and must be within range (see: NodeCount). The list includes: Your own NodesContextNodesIVariableNodesIConstantNodesISubgraphNodes It excludes BlockNodes, which are only accessible through their parent ContextNode.
