<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.ISubgraphNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for a specialized node that references a subgraph and exposes its input and output variables as ports.

Subgraph nodes act as entry points to reusable graphs. These nodes mirror the subgraph's inputs and outputs as ports on the node to allow the integration of subgraphs within a main graph. The subgraph must be a valid Graph type. The main graph must support subgraphs through GraphOptions.SupportsSubgraphs, and the subgraph must be linked to the main graph using the SubgraphAttribute.

### Public Methods

| Method | Description |
| --- | --- |
| GetSubgraph | Retrieves the subgraph linked to this node. |
