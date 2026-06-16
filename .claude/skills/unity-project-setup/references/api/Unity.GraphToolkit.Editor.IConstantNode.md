<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IConstantNode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for a specialized node that outputs a fixed value of a specific data type.

Use constant nodes to represent a static, predefined value in the graph. This value remains unchanged and is typically used to feed constant input into computations. To retrieve the value, use TryGetValue_1. This method is type-safe and provides access to the node’s value if the type matches. The DataType property identifies the constant's type.

### Properties

| Property | Description |
| --- | --- |
| DataType | The data type of the constant node's value. |

### Public Methods

| Method | Description |
| --- | --- |
| TryGetValue | Attempts to retrieve the value of the constant node as the specified type. |
