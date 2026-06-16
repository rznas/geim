<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.INodeOption.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for a node option.

Node options are typed properties that appear under the node header and in the inspector when a node is selected. Unlike ports, they cannot receive values from wires. They allow the tool developers to change the behavior or topology of the node at edit time. For example, you can use node options to change the number of available ports on a node. Each option has a unique Name (which must be unique per node for identification), a DisplayName (for the UI), and a DataType that defines the type of its value. Use TryGetValue_1 to retrieve the option's value.

### Properties

| Property | Description |
| --- | --- |
| DataType | The data type of the node option. |
| DisplayName | The display name of the node option shown in the UI. |
| Name | The unique identifier of the node option. |

### Public Methods

| Method | Description |
| --- | --- |
| TryGetValue | Tries to retrieve the value of the node option using the specified type. |
