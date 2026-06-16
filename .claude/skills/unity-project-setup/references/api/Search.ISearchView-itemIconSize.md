<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ISearchView-itemIconSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the size of items in the search view.

.

```csharp
using UnityEditor;
using UnityEditor.Search;

static class Example_ISearchView_itemIconSize
{
    [MenuItem("Examples/ISearchView/itemIconSize")]
    public static void Run()
    {
        // SearchService can open a SearchView.
        var view = SearchService.ShowContextual("asset");
        view.itemIconSize = 45;
    }
}
```
