<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.DisplayMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for setting the display mode to use for a search view.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Search;

static class Example_ISearchView_displayMode
{
    [MenuItem("Examples/ISearchView/displayMode")]
    public static void Run()
    {
        // SearchService can open a SearchView.
        var view = SearchService.ShowContextual("asset");

        // You can assign DisplayMode as iconSizeValue...
        view.itemIconSize = (float)DisplayMode.List;

        // ... and this will update displayMode
        Debug.Assert(view.displayMode == DisplayMode.List);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| None | Unspecified ISearchView display mode. |
| Compact | Display as a compact list view. |
| List | Display as a list view. |
| Grid | Display as a grid of icons of various sizes. |
| Table | Display search results in a table. |
