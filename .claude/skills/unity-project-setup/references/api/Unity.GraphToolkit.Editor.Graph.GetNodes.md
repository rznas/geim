<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Graph.GetNodes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IEnumerable<INode>** An `IEnumerable` of all INodes in the graph.

### Description

Retrieves all nodes in the graph.

Use this method to access every node in the graph. Nodes are returned in the order they were created. The list includes: Your own NodesContextNodesIVariableNodesIConstantNodesISubgraphNodes It excludes BlockNodes, which are only accessible through their parent ContextNode.
