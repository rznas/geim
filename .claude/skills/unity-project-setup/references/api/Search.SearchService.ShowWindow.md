<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.ShowWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Search context to start with. |
| topic | Topic to search. |
| saveFilters | True if user search provider filters should be saved for next search session. |
| reuseExisting | True if the active providers should be saved for the next session. |
| multiselect | True if the search supports multi-selection. |
| defaultWidth | Initial width of the window. |
| defaultHeight | Initial height of the window. |
| dockable | If true, creates a dockable search window (that is closed when an item is activated). If false, it creates a dropdown (borderless, undockable and unmovable) version of the search window. |

### Returns

**ISearchView** Returns the search view window instance.

### Description

Creates a new search window.

```csharp
using UnityEditor;
using UnityEditor.Search;

static class Example_SearchService_ShowWindow
{
    [MenuItem("Examples/SearchService/ShowWindowEmpty")]
    public static void Run1()
    {
        SearchService.ShowWindow()
            .SetSearchText(string.Empty);
    }

    [MenuItem("Examples/SearchService/ShowWindowWithSearchText")]
    public static void Run2()
    {
        SearchService.ShowWindow(SearchService.CreateContext("m: Profiler"));
    }

    [MenuItem("Examples/SearchService/ShowWindowCustomTopic")]
    public static void Run3()
    {
        SearchService.ShowWindow(topic: "My Things")
            .SetSearchText(string.Empty);
    }

    [MenuItem("Examples/SearchService/ShowPopupWindow")]
    public static void Run4()
    {
        SearchService.ShowWindow(defaultWidth: 1300, defaultHeight: 700, dockable: false);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| viewState | Search view state used to open the Search window. |

### Returns

**ISearchView** Returns the search view window instance.

### Description

Creates a new search window.

```csharp
using UnityEditor;
using UnityEditor.Search;
using UnityEngine.Search;static class SearchWindows
{
    [MenuItem("Search/Views/Simple Search Bar 1")] public static void SearchViewFlags1() => CreateWindow(SearchViewFlags.None);
    [MenuItem("Search/Views/Simple Search Bar 2")] public static void SearchViewFlags2() => CreateWindow(SearchViewFlags.EnableSearchQuery);
    [MenuItem("Search/Views/Simple Search Bar 3")] public static void SearchViewFlags3() => CreateWindow(SearchViewFlags.DisableInspectorPreview);
    [MenuItem("Search/Views/Simple Search Bar 4")] public static void SearchViewFlags4() => CreateWindow(SearchViewFlags.EnableSearchQuery | SearchViewFlags.DisableInspectorPreview);    static void CreateWindow(SearchViewFlags flags)
    {
        var searchContext = SearchService.CreateContext(string.Empty);
        var viewArgs = new SearchViewState(searchContext, SearchViewFlags.CompactView | flags) { title = flags.ToString() };
        SearchService.ShowWindow(viewArgs);
    }
}
```
