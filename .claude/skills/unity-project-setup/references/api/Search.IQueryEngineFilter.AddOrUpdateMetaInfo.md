<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.IQueryEngineFilter.AddOrUpdateMetaInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | The key of the information. |
| value | The value of the information. |

### Returns

**IQueryEngineFilter** The current filter.

### Description

Add or update additional information specific to the filter.

You can use this function to add additional information on the filter.

```csharp
// Add a description to the filter
var descriptionKey = "desc";
var descriptionValue = "This filters the objects based on their id.";
var exampleKey = "example";
var exampleValue = "id>10 or id=2";
queryEngine.TryGetFilter("id", out var filter);
filter.AddOrUpdateMetaInfo(descriptionKey, descriptionValue)
    .AddOrUpdateMetaInfo(exampleKey, exampleValue);
```

You can then retrieve that information by accessing the metaInfo property directly.

```csharp
var descriptionKey = "desc";
var allFilters = queryEngine.GetAllFilters();
var filtersWithDescription = allFilters.Where(f => f.metaInfo.ContainsKey(descriptionKey));
```

See metaInfo for a complete example.
