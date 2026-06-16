<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.QueryEngine_1.TryGetFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| token | The token used to create the filter. |
| filter | The existing IQueryEngineFilter, or null if it does not exist. |

### Returns

**bool** Returns true if the filter is retrieved or false if the filter does not exist.

### Description

Get a filter by its token.

This method tries to retrieve a filter by its token. If it exists, it will be put in the output parameter "filter" and the function returns true. If the filter does not exist, the parameter "filter" is set to null and the function returns false.

```csharp
// Get the filter corresponding to the token "id"
if (!queryEngine.TryGetFilter("id", out var idFilter))
    Debug.LogError("The filter \"id\" should have been found.");
```

See GetAllFilters for a complete example.
