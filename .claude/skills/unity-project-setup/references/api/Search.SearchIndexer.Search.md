<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.Search.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| query | Search query to look for. If if matches any of the indexed variations, a result is returned. |
| context | The search context on which the query is applied. |
| provider | The search provider that initiated the search. |
| maxScore | Maximum match score of any matched Search Result. See SearchResult.score. |
| patternMatchLimit | Maximum number of matched Search Results that can be returned. See SearchResult. |

### Returns

**IEnumerable<SearchResult>** Returns a collection of Search Results matching the query.

### Description

Runs a search query in the index.

```csharp
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_Search
{
    [MenuItem("Examples/SearchIndexer/Search")]
    public static void Run()
    {
        var si = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        si.Start();

        // Index some documents and properties
        si.AddProperty("color", "red", si.AddDocument("RGB 55"));
        si.AddProperty("color", "reddish", si.AddDocument("RGB 45"));
        si.AddProperty("color", "yellow", si.AddDocument("RGB 66"));

        si.Finish(() =>
        {
            // Search document with property color=red*
            var results = si.Search("color:red").ToList();
            Debug.Assert(results.Count == 2);
            if (results.Count > 0)
                Debug.Log(string.Join(", ", results.Select(r => $"{r.id} [{r.score}]")));
            // Dispose of the SearchIndexer when you are done with it.
            si.Dispose();
        });
    }
}
```
