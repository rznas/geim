<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Graph.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the core definition of a graph and defines its behavior.

`Graph` serves as the central entry point for: Lifecycle management (via OnEnable, OnDisable)Change tracking (via OnGraphChanged)Access to nodes and variables To register a graph type and associate it with a custom file extension and configuration options, apply the GraphAttribute to your custom `Graph` class. You can further control the graph's behavior using the GraphOptions enum, which defines traits such as support for subgraphs. If your graph supports subgraphs (via GraphOptions.SupportsSubgraphs), you can declare valid subgraph types using the SubgraphAttribute. Use the GraphDatabase utility class to create, load, and save graph assets in the Unity Editor. Graphs are serialized assets. You can create them through the editor UI with GraphDatabase.PromptInProjectBrowserToCreateNewAsset_1 or load them from disk with GraphDatabase.LoadGraph_1.

### Properties

| Property | Description |
| --- | --- |
| Name | The name of the graph. |
| NodeCount | The number of INodes in the graph. |
| VariableCount | The number of IVariables declared in the graph. |

### Public Methods

| Method | Description |
| --- | --- |
| GetNode | Retrieves a node defined in the graph by its index. |
| GetNodes | Retrieves all nodes in the graph. |
| GetVariable | Retrieves a variable declared in the graph by index. |
| GetVariables | Retrieves all variables declared in the graph. |
| OnDisable | Called when the graph is unloaded, or goes out of scope in the editor. |
| OnEnable | Called when the graph is created or loaded in the editor. |
| OnGraphChanged | Called after the graph has changed. |
