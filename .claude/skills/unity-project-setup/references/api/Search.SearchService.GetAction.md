<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.GetAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| provider | Search provider to look up. |
| actionId | Unique action ID within the search provider. |

### Returns

**SearchAction** The matching action.

### Description

Returns the search action for a given search provider and search action ID.

```csharp
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchService_GetAction
{
    [MenuItem("Examples/SearchService/GetAction")]
    public static void Run()
    {
        var menuProvider = SearchService.GetProvider("menu");
        Debug.Assert(menuProvider != null);

        var execMenuAction = SearchService.GetAction(menuProvider, "select");
        Debug.Assert(execMenuAction != null);

        using var context = SearchService.CreateContext(menuProvider, "Search All...");
        using var results = SearchService.Request(context, SearchFlags.Synchronous);
        execMenuAction.handler(results.First());
    }
}
```
