<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IQueryEngineFilter.AddOperator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| op | The operator identifier. |

### Returns

**QueryFilterOperator** The added, or existing, QueryFilterOperator.

### Description

Add a custom filter operator specific to the filter.

Custom operators defined on a filter take precedence over operators defined globally on the QueryEngine. This is useful if you wish to have a custom operator only for a specific filter, or if you wish to override the default behavior of a built-in operator for a specific filter. If the operator already exists, the existing operator is returned.

```csharp
// Override global operators with specific operator handlers for this filter
filter.AddOperator("=").AddHandler((Vector2 ev, Vector2 fv) => ev == fv);
filter.AddOperator("!=").AddHandler((Vector2 ev, Vector2 fv) => ev != fv);
```

See IQueryEngineFilter for a complete example.
