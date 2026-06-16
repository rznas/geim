<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchyCommandList.SetParent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| node | The hierarchy node to set a parent for. |
| parent | The hierarchy node to set as the parent node. |

### Returns

**bool** `true` if the command was appended to the list, `false` otherwise.

### Description

Sets the parent node of a hierarchy node.

### Parameters

| Parameter | Description |
| --- | --- |
| node | The hierarchy node. |
| parent | The hierarchy node to set as a parent. |
| index | The index at which to insert the node in the parent's children list. |

### Returns

**bool** `true` if the command was appended to the list, `false` otherwise.

### Description

Sets the parent node of a hierarchy node.

The index maximum value is the parent's child count, or child count minus one if moving within the same parent.
