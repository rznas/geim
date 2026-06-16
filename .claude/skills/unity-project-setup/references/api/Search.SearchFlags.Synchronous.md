<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchFlags.Synchronous.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search items are fetched synchronously. This can take a long time for some SearchProvider (like asset). Use at your own risk.

```csharp
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

public class SearchFlags_Synchronous
{
    [MenuItem("Examples/SearchFlags/Synchronous")]
    static void Run()
    {
        using (var searchContext = SearchService.CreateContext("menu", "Create"))
        {
            // ***IMPORTANT***: Synchronous search can take a long time to resolve depending on the provider (especially assets).
            // Unity suggests using SearchService.Request.

            // Initiate the query and get the results.
            var results = SearchService.GetItems(searchContext, SearchFlags.Synchronous);

            foreach (var searchItem in results)
                Debug.Log(searchItem.GetDescription(searchContext));
        }
    }
}
```
