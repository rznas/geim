<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.DisplayMode.List.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Display as a list view.

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
