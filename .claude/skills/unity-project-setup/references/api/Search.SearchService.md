<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Principal Search API to initiate searches and fetch results.

Make sure to check SearchService.Request for a complete list of all the different ways to execute a search request.

```csharp
using System.Linq;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchService
{
    [MenuItem("Examples/SearchService/Class")]
    public static void Run()
    {
        void OnSearchCompleted(SearchContext context, IList<SearchItem> items)
        {
            foreach (var item in items)
                Debug.Log(item);
        }

        SearchService.Request("*.cs", OnSearchCompleted);
    }

    [MenuItem("Examples/SearchService/Providers")]
    public static void RunProviders()
    {
        // Print special search providers
        foreach (var provider in SearchService.Providers.Where(p => p.isExplicitProvider))
            Debug.Log($"Special Search Provider {provider.name} ({provider.id})");
    }

    [MenuItem("Examples/SearchService/OrderedProviders")]
    public static void RunOrderedProviders()
    {
        // Print providers by their search priority when a query is executed.
        foreach (var provider in SearchService.OrderedProviders)
            Debug.Log($"[{provider.priority}] {provider.name} ({provider.id})");
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| OrderedProviders | Returns the list of search providers sorted by priority. |
| Providers | Returns the list of all search providers (active or not). |

### Static Methods

| Method | Description |
| --- | --- |
| CreateContext | Creates context from a list of search provider IDs. |
| CreateIndex | Create a new search index. |
| EnumerateDatabases | Enumerate search databases. |
| GetAction | Returns the search action for a given search provider and search action ID. |
| GetActiveProviders | Returns all active providers. |
| GetItems | Initiates a search and returns all search items matching the search context. Other items can be found later using asynchronous searches. |
| GetProvider | Returns the data of a search provider given its ID. |
| IsIndexReady | Indicates if a search index is ready to be used. |
| Refresh | Clears everything and reloads all search providers. Use with care. Useful for unit tests. |
| RefreshWindows | Refresh all currently opened Search windows. |
| Request | Executes a search request that will fetch search results asynchronously. |
| SetActive | Activates or deactivates a search provider. Call Refresh after this to take effect on the next search. |
| ShowContextual | Open the search window using a specific context (activating specific filters). |
| ShowObjectPicker | Open a Search Picker window for Unity objects. |
| ShowPicker | Open a search item picker window. |
| ShowWindow | Creates a new search window. |
