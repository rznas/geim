<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Node.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The base class for all user-accessible nodes in a graph.

Inherit from this class to define custom node types that appear in the graph. The Node class provides lifecycle hooks, serialization support, and the structure needed to define ports, UI behaviors, and custom logic. This class forms the foundation of all user-defined nodes in a graph-based tool, including variable nodes, context nodes, and subgraph nodes. To create a custom node, derive from Node, define its input and output ports using a port builder in OnDefinePorts, and define its INodeOptions in OnDefineOptions. This class is used in combination with other types like INode, IPort, and Graph to construct and manage node-based workflows. See also: INode for the interface this class implementsContextNode and BlockNode for composition patternsIVariableNode for how to work with variable-based nodesISubgraphNode for how to work with subgraph-based nodes

### Properties

| Property | Description |
| --- | --- |
| InputPortCount | The number of input ports on the node. |
| NodeOptionCount | The number of node options defined in the node. |
| NodeOptions | The node options defined on this node. |
| OutputPortCount | The number of output ports on the node. |

### Public Methods

| Method | Description |
| --- | --- |
| DefineNode | Defines the structure of the node by building its ports and options. |
| GetInputPort | Retrieves an input port using its index. |
| GetInputPortByName | Retrieves an input port using its name. |
| GetInputPorts | Retrieves all input ports on the node in the order they are displayed. |
| GetNodeOption | Retrieves a node option using its zero-based index. |
| GetNodeOptionByName | Retrieves a node option using its name. |
| GetOutputPort | Retrieves an output port using its index in the displayed order. |
| GetOutputPortByName | Retrieves an output port using its name. |
| GetOutputPorts | Retrieves all output ports on the node in the order they are displayed. |
| OnDisable | Called when the node is removed or when the graph is disabled. |
| OnEnable | Called when the node is created or when the graph is enabled. |

### Protected Methods

| Method | Description |
| --- | --- |
| OnDefineOptions | Called during DefineNode to define the options available on the node. |
| OnDefinePorts | Called during DefineNode to define the input and output ports of the node. |
