<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchService.ShowPicker.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| context | Search context to start with. |
| selectHandler | Callback invoked when an item is selected. |
| trackingHandler | Callback invoked when an item is clicked without it being the final selection. |
| filterHandler | Callback invoked to filter search item results to display. |
| title | Topic to search. |
| itemSize | Initial result view item size. |
| defaultWidth | Initial width of the window. |
| defaultHeight | Initial height of the window. |
| subset | Initial set of items to be searched. |
| flags | Options defining how the query is performed. |

### Returns

**ISearchView** Creates a new search window.

### Description

Open a search item picker window.

### Parameters

| Parameter | Description |
| --- | --- |
| viewState | Search view state used to open the Search Picker window. |

### Returns

**ISearchView** Creates a new search window.

### Description

Open a Search Picker window.

This example shows how to open a custom search picker to pick a decal material.

```csharp
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;
using UnityEngine.Search;

static class Example_SearchService_ShowPicker
{
    [MenuItem("Examples/SearchService/ShowPicker")]
    public static void Run()
    {
        var context = SearchService.CreateContext("asset", "t:material");
        var viewState = new SearchViewState(context,
            SearchViewFlags.GridView |
            SearchViewFlags.OpenInBuilderMode |
            SearchViewFlags.DisableSavedSearchQuery)
        {
            windowTitle = new GUIContent("Material Selector"),
            title = "Material",
            selectHandler = SelectHandler,
            trackingHandler = TrackingHandler,
            position = SearchUtils.GetMainWindowCenteredPosition(new Vector2(600, 400))
        };
        SearchService.ShowPicker(viewState);
    }

    static void SelectHandler(SearchItem searchItem, bool canceled)
    {
        Debug.Log($"Selected {searchItem} (canceled: {canceled})");
    }

    static void TrackingHandler(SearchItem searchItem)
    {
        Debug.Log($"Tracking {searchItem}");
    }
}
```
