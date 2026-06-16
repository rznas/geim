<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IPort.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for a node port.

Use this interface to access port metadata and connectivity. A port represents an input or output slot on a node and users can connect ports to other ports to form graph relationships. Each port has a unique name within its node context, a data type, and a direction. Users can only connect a port to another port if they are compatible as follows: The ports must have opposite PortDirection (i.e., one input and one output).Either both ports must have the same data type or the output port must be a derived data type and the input port, a base data type. Of course the derived data type must be derived from the same base type. To retrieve the node that owns the port, use `INodeExtensions.GetNode`.

### Properties

| Property | Description |
| --- | --- |
| DataType | Gets the data type associated with the port. |
| Direction | Gets the direction of the port. |
| DisplayName | Gets the label displayed in the UI for the port. |
| FirstConnectedPort | Gets the first port connected to this port, if any. |
| IsConnected | Indicates whether the port is currently connected to any other port. |
| Name | Gets the unique identifier name of the port. |

### Public Methods

| Method | Description |
| --- | --- |
| GetConnectedPorts | Retrieves all ports connected to this port. |
| TryGetValue | Tries to retrieve the current value assigned to the port’s UI field. |
