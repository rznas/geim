<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchSelection.GetEnumerator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IEnumerator<SearchItem>** Enumerator on the currently selected SearchItems.

### Description

Gets an enumerator on the currently selected SearchItems.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Search;

static class Example_SearchSelection_GetEnumerator
{
    static ISearchView s_View;

    [MenuItem("Examples/SearchSelection/GetEnumerator")]
    public static void Run()
    {
        s_View = SearchService.ShowContextual("asset");
        s_View.SetSearchText("t:MonoScript");

        EditorApplication.delayCall += DisplayResultsWhenReady;
    }

    public static void DisplayResultsWhenReady()
    {
        // Wait until results are ready to process.
        if (s_View.results.pending || s_View.results.Count == 0)
        {
            EditorApplication.delayCall += DisplayResultsWhenReady;
            return;
        }

        s_View.AddSelection(0);
        s_View.AddSelection(2);
        s_View.AddSelection(4);

        // Use Enumerator pattern to iterate over selected items
        var selection = s_View.selection;
        foreach (var item in selection)
        {
            Debug.Log(item.GetLabel(s_View.context));
        }
    }
}
```
