<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Hierarchy.HierarchySearchQueryDescriptor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Encapsulates all the query filters and text values that are used to filter a hierarchy.

### Static Properties

| Property | Description |
| --- | --- |
| Empty | The default empty query. |
| InvalidQuery | The default invalid query. |

### Properties

| Property | Description |
| --- | --- |
| Filters | User-defined filters. Filters are in this form [filterName][operator][filterValue]. For example: t:Light. Each of these filters can be used by a NodeHandler to filter according to domain-specific characteristics. |
| Invalid | Whether the query invalid. An invalid query yields no node. |
| IsEmpty | Whether the query is empty. |
| IsSystemOnlyQuery | Whether the query uses system filters. This means NodeHandlers won't be called for filtering. |
| IsValid | Whether the query is valid. |
| Query | Get the query built from all the filter and text values. |
| Strict | Whether the query is evaluated strictly. This means that if any filters are invalid, then the whole query is invalid. |
| SystemFilters | The filters used by the hierarchy. Filters are in this form: [filterName][operator][filterValue]. For example: nodetype:gameobject. These filters are global to all NodeHandlers. |
| TextValues | All textual values. For example: "cube" |

### Constructors

| Constructor | Description |
| --- | --- |
| HierarchySearchQueryDescriptor | The constructor for a query. |

### Public Methods

| Method | Description |
| --- | --- |
| ToString | Converts the query to textual form. A textual query is of the form: <All system Filters> <All user filters> <All textual values>. |
