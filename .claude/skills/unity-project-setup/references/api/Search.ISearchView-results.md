<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.ISearchView-results.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the list of all search results.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Search;

static class Example_ISearchView_results
{
    static ISearchList s_Results;
    static ISearchView s_View;

    [MenuItem("Examples/ISearchView/results")]
    public static void Run()
    {
        s_View = SearchService.ShowContextual("asset");
        s_View.SetSearchText("t:MonoScript");

        // Keep result until the asynchronous Search query is totally processed.
        s_Results = s_View.results;
        EditorApplication.delayCall += DisplayResultsWhenReady;
    }

    public static void DisplayResultsWhenReady()
    {
        // Wait until results are ready to be processed.
        if (s_Results.pending || s_Results.Count == 0)
        {
            EditorApplication.delayCall += DisplayResultsWhenReady;
            return;
        }

        // Iterate over all results:
        foreach (var result in s_Results)
        {
            Debug.Log(result.GetLabel(s_View.context));
        }
    }
}
```
