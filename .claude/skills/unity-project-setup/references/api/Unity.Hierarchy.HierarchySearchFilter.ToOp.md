<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchySearchFilter.ToOp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| op | The textual operator. For example: =, <=, :, and .... |

### Returns

**HierarchySearchFilterOperator** The `HierarchySearchFilterOperator` that matches the parsed string. For example, this function parses the string "=" and converts it to `HierarchySearchFilterOperator.Equal`.

### Description

Converts a textual value to its operator value if possible.
