<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.GetItems.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | The current search context. |
| options | Options defining how the query is performed. |

### Returns

**List<SearchItem>** A list of search items matching the search query.

### Description

Initiates a search and returns all search items matching the search context. Other items can be found later using asynchronous searches.

Unity suggests using SearchService.Request to execute a search query. `GetItems` usually requires setting up more context to achieve a good result. The following is a small example that uses `GetItems`.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchService_GetItems
{
    [MenuItem("Examples/SearchService/GetItems")]
    public static void Run()
    {
        // Create a container to hold found items.
        var results = new List<SearchItem>();

        // Create the search context that will be used to execute the query.
        using (var searchContext = SearchService.CreateContext("scene", "is:leaf"))
        {
            // Initiate the query and get the results.
            // Note: it is recommended to use SearchService.Request if you wish to fetch the items asynchronously.
            results = SearchService.GetItems(searchContext, SearchFlags.WantsMore | SearchFlags.Synchronous);

            // Print results
            foreach (var searchItem in results)
                Debug.Log(searchItem.GetDescription(searchContext));
        }
    }
}
```
