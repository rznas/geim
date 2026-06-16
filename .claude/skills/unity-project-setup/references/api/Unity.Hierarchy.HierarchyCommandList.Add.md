<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchyCommandList.Add.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| parent | The parent of the new node. |
| node | The new node if the command succeeds. |

### Returns

**bool** `true` if the command was appended to the list, `false` otherwise.

### Description

Adds a new node that has a specified parent node to the hierarchy.

### Parameters

| Parameter | Description |
| --- | --- |
| parent | The parent of the new nodes. |
| count | The number of nodes to create. |
| nodes | The new nodes if the command succeeds. |

### Returns

**bool** `true` if the command was appended to the list, `false` otherwise.

### Description

Adds multiple new nodes that have a specified parent node to the hierarchy.

### Parameters

| Parameter | Description |
| --- | --- |
| parent | The parent of the new nodes. |
| outNodes | The span of nodes filled with new nodes if the command succeeds. |

### Returns

**bool** `true` if the command was appended to the list, `false` otherwise.

### Description

Adds multiple new nodes that have a specified parent node to the hierarchy.
