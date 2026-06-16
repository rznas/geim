<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchSelection.MinIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**int** Returns the lowest selected index.

### Description

Lowest selected index of any item in the selection.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Search;

static class Example_ISearchView_AddSelection
{
    static ISearchView s_View;

    [MenuItem("Examples/ISearchView/AddSelection")]
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

        // Use AddSelection to append to the current selection.
        s_View.AddSelection(0);
        s_View.AddSelection(2);
        s_View.AddSelection(4);

        // Validate what is actually selected:
        var selection = s_View.selection;
        Debug.Log(selection.Count); // 3
        Debug.Log(selection.MinIndex()); // 0
        Debug.Log(selection.MaxIndex()); // 4
    }
}
```
