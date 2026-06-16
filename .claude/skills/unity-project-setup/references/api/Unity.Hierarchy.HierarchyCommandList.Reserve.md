<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchyCommandList.Reserve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| count | The number of nodes to reserve memory for. |

### Returns

**bool** `true` if the command was appended to the list, `false` otherwise.

### Description

Reserves memory for nodes to use. Use this to avoid memory allocation hits when you add batches of nodes.
