<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.UseWithGraphAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Attribute used to specify which Graph types are compatible with the decorated Node class.

This attribute links a specific Node class to one or more Graph types, enabling fine-grained control over which graph types support the node. This allows framework authors to explicitly declare node compatibility across different kinds of graphs and ensures that only valid nodes are available for use in each graph context. By default, nodes defined in the same assembly as the graph are considered compatible and available. In this default setup, the UseWithGraphAttribute is not required. However, when a graph uses GraphOptions.DisableAutoInclusionOfNodesFromGraphAssembly , this attribute must be used to declare which Graph types support the node. This attribute affects editor behaviors such as graph item library population and helps prevent the accidental use of unsupported nodes.

### Constructors

| Constructor | Description |
| --- | --- |
| UseWithGraphAttribute | Initializes a new instance of the UseWithGraphAttribute class with the specified supported graph types. |

### Public Methods

| Method | Description |
| --- | --- |
| IsGraphTypeSupported | Determines whether the specified graph type supports the node decorated with this attribute. |
