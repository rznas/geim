<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search options used to fetch items. Mostly with SearchContext to specify how a search should be handled.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

public class SearchFlags_NoIndexing
{
    [MenuItem("Examples/SearchFlags/NoIndexing")]
    public static void RequestAll()
    {
        // Find all assets matching the word Search without using any indexed data (will rely on the Find Files provider).
        SearchService.Request("p: Search", (SearchContext context, IList<SearchItem> items) =>
        {
            foreach (var item in items)
                Debug.Log(item);
        }, SearchFlags.NoIndexing);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| None | No specific search options. Result will be unsorted. |
| Synchronous | Search items are fetched synchronously. This can take a long time for some SearchProvider (like asset). Use at your own risk. |
| Sorted | Fetched items are sorted by the search service. |
| FirstBatchAsync | Sends the first items asynchronously. |
| WantsMore | Sets the search to search for all results. This might take longer than unusual if SearchProvider are using multiple sources of items (files on disk, AssetDatabase...) |
| Debug | Adds debugging information to SearchItem while looking for results. |
| NoIndexing | Prevents the search from using indexing. Asset Provider will use its builtin Find in Files provider. |
| Expression | Indicates that the search query will be evaluated as a search expression. |
| QueryString | Evaluate the search text as a pure query string (do not evaluate the text as a search expression). |
| Packages | The Object Picker window will include any results from packages. |
| Default | Default Search Flag (SearchFlags.Sorted). |
| AllProvidersAvailable | All SearchProviders are available in the SearchWindow dropdown menu. |
| UseSessionSettings | Persist the SearchContext state in between sessions using the SearchViewState.sessionName as its data key. |
| ShowErrorsWithResults | Always show query errors even when there are results available. This flag is only usable with internal API. |
| ReuseExistingWindow | Indicates that the search view will find any existing window instances that are already opened before creating a new one. This flag is only usable with internal API. |
| Multiselect | Indicates that the search view will allow multi-selection. This flag is only usable with internal API. |
| Dockable | Indicates that the search view is dockable. This flag is only usable with internal API. |
| FocusContext | Indicates that the search view will focus on the first contextual search provider available when it opens. This flag is only usable with internal API. |
| HidePanels | Indicates that the search view will hide its side panels when it opens. This flag is only usable with internal API. |
| GeneralSearchWindow | This is a general purpose search window that has access to all Providers in the SearchService. |
| OpenDefault | Opens a search view with default options. This flag is only usable with internal API. |
| OpenGlobal | Opens a search view for a global search. This flag is only usable with internal API. |
| OpenContextual | Opens a search view with default contextual options. This flag is only usable with internal API. |
| OpenPicker | Opens a search view as an object picker. This flag is only usable with internal API. |
