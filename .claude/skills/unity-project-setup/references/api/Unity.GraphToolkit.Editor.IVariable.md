<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.IVariable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for a graph variable.

Variables are data containers that are accessible throughout a graph. You can manage variables in the Blackboard and reference them with variable nodes. A variable has a name, a data type, a kind that defines its visibility within subgraphs, and an optional default value. Use TryGetDefaultValue_1 to retrieve the default value if one exists. Variables are distinct from variable nodes. However, you can drag variables onto the graph canvas, where they are instantiated as variable nodes.

### Properties

| Property | Description |
| --- | --- |
| DataType | Gets the data type of the variable. |
| Name | Gets the name of the variable. |
| VariableKind | Gets the kind of the variable, such as Local, Input, or Output. |

### Public Methods

| Method | Description |
| --- | --- |
| TryGetDefaultValue | Tries to retrieve the default value of the variable. |
