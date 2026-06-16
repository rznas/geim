<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.CreateContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| searchText | Search Query. |
| provider | Search provider (This search provider does not need to be active or registered). |
| providerId | Unique search provider ID string (i.e. asset, scene, find, etc.) |
| providerIds | List of search provider IDs. |
| providers | List of search providers. |
| flags | Options defining how the query is performed. |

### Returns

**SearchContext** Returns a new SearchContext.

### Description

Creates context from a list of search provider IDs.

```csharp
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchService_CreateContext
{
    [MenuItem("Examples/SearchService/CreateContext")]
    public static void Run()
    {
        using var searchContext = SearchService.CreateContext("scene", "camera");
        using var results = SearchService.Request(searchContext, SearchFlags.Synchronous);
        {
            foreach (var label in results.Select(r => r.GetLabel(searchContext)))
                Debug.Log(label);
        }
    }
}
```
