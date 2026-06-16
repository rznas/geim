<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.GetProvider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| providerId | Unique ID of the search provider. |

### Returns

**SearchProvider** The matching search provider.

### Description

Returns the data of a search provider given its ID.

```csharp
var menuProvider = SearchService.GetProvider("menu");
Debug.Assert(menuProvider != null);
```
