<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchFlags.WantsMore.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the search to search for all results. This might take longer than unusual if SearchProvider are using multiple sources of items (files on disk, AssetDatabase...)

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
