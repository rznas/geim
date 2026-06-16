<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.INode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for a node.

This interface provides methods for accessing input and output ports, which are essential for connecting nodes.

### Properties

| Property | Description |
| --- | --- |
| InputPortCount | The number of input ports on the node. |
| OutputPortCount | The number of output ports on the node. |

### Public Methods

| Method | Description |
| --- | --- |
| GetInputPort | Retrieves an input port using its index. |
| GetInputPortByName | Retrieves an input port using its name. |
| GetInputPorts | Retrieves all input ports on the node in the order they are displayed. |
| GetOutputPort | Retrieves an output port using its index in the displayed order. |
| GetOutputPortByName | Retrieves an output port using its name. |
| GetOutputPorts | Retrieves all output ports on the node in the order they are displayed. |
