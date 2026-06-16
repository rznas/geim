<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.ContextNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A specialized node that serves as a dynamic container for compatible BlockNode instances.

Context nodes are node structures that group and control a sequence of BlockNode instances. A ContextNode owns a list of BlockNodes. These blocks cannot exist independently in the graph and must always be children of a context node. To control which block node types are valid for a specific context node type, use the UseWithContextAttribute on the corresponding BlockNode class.

### Properties

| Property | Description |
| --- | --- |
| BlockCount | The number of BlockNodes contained in this context node. |
| BlockNodes | An IEnumerable collection of the BlockNodes contained in this context node. |

### Public Methods

| Method | Description |
| --- | --- |
| GetBlock | Retrieves the BlockNode at the specified index in the context node's block list. |

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
