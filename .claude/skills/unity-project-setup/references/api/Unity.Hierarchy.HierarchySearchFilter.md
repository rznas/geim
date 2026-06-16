<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchySearchFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Encapsulates all data needed to filter a hierarchy.

### Static Properties

| Property | Description |
| --- | --- |
| Invalid | The default invalid HierarchySearchFilter. This assumes the Hierarchy has a query, but is invalid, so no nodes are shown. |

### Properties

| Property | Description |
| --- | --- |
| IsValid | Whether the filter is valid and has a name. |
| Name | The name of the filter. |
| NumValue | Filter numerical value. |
| Op | The filter search operator. |
| Value | The textual value of the filter. |

### Static Methods

| Method | Description |
| --- | --- |
| ToOp | Converts a textual value to its operator value if possible. |
| ToString | Converts an operator to its textual value. |
