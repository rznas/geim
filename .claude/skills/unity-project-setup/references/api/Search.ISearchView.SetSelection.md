<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ISearchView.SetSelection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| selection | Array of item indices to select. |

### Description

Updates the search view with a new selection.

.

```csharp
using UnityEditor;
using UnityEditor.Search;

static class Example_ISearchView_SetSelection
{
    static ISearchView s_View;
    [MenuItem("Examples/ISearchView/SetSelection")]
    public static void Run()
    {
        s_View = SearchService.ShowContextual("asset");
        s_View.SetSearchText("t:MonoScript");

        // Calling SetSelection when no results are available has no effect.
        // Wait until some results are available.
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

        // Use SetSelection to specify which items should be selected.
        s_View.SetSelection(0, 2, 4);
    }
}
```
