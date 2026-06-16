<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.AddNumber.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | Key used to retrieve the value. |
| value | Number value to store in the index. |
| score | Relevance score of the word. |
| documentIndex | Document where the indexed value was found. |

### Description

Adds a key-number value pair to the index. The key won't be added with variations.

```csharp
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_AddNumber
{
    [MenuItem("Examples/SearchIndexer/AddNumber")]
    public static void Run()
    {
        var si = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        si.Start();

        // Add some documents and index a power value that can be searched.
        si.AddNumber("power", 4.4, score: 0, si.AddDocument("Weak"));
        si.AddNumber("power", 6.42, score: 0, si.AddDocument("Healthy"));
        si.AddNumber("power", 9.9, score: 0, si.AddDocument("Strong"));

        si.Finish(() =>
        {
            SearchPowerLevels(si);
            // Dispose the SearchIndexer when you are done with it.
            si.Dispose();
        });
    }

    private static void SearchPowerLevels(SearchIndexer si)
    {
        SearchPowerLevel(si, "power<5", 1);
        SearchPowerLevel(si, "power>=6", 2);
    }

    static void SearchPowerLevel(SearchIndexer si, string powerQuery, int expectedCount)
    {
        var results = si.Search(powerQuery).ToList();
        Debug.Assert(results.Count == expectedCount, "Invalid query");
        Debug.Log($"Document with {powerQuery}: {string.Join(", ", results.Select(r => r.id))}");
    }
}
```
