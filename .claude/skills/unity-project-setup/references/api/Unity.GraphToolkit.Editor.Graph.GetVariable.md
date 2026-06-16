<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.GraphToolkit.Editor.Graph.GetVariable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the variable to retrieve. |

### Returns

**IVariable** The IVariable at the specified index.

### Description

Retrieves a variable declared in the graph by index.

Use this method to access a specific IVariable from the list of variables declared in the graph. This list does not include variable nodes that reference variables. The index is zero-based and reflects the order in which the variables were created. The index must be within the valid range of the variable list (see: VariableCount).
