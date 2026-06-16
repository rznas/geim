<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ISearchView-context.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the current view search context.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Search;

static class Example_ISearchView_context
{
    [MenuItem("Examples/ISearchView/context")]
    public static void Run()
    {
        var view = SearchService.ShowContextual("asset");

        view.SetSearchText("t:material");

        // Search text corresponds to the searchText of the view SearchContext.
        Debug.Assert(view.context.searchText == "t:material");
    }
}
```
