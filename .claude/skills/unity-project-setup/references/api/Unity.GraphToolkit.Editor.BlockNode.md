<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.BlockNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a specialized node that can only exist within a ContextNode.

Use block nodes to define logic or operations that are scoped within a ContextNode. A block node cannot be added directly to the graph; it must be a child of a valid context node type. Attempting to instantiate or add a `BlockNode` outside of a ContextNode will result in invalid behavior. To limit which context types can contain a block node, use the UseWithContextAttribute.

### Properties

| Property | Description |
| --- | --- |
| ContextNode | The ContextNode that contains this block node. |
| Index | The index of this block node within the list of blocks in the context node. |

### Inherited Members

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
