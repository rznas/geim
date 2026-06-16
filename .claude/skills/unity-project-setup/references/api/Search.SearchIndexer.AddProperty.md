<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.AddProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| key | Key used to retrieve the value. |
| value | String value to store in the index. |
| documentIndex | Document where the indexed value was found. |
| saveKeyword | Indicates if we store this key in the keyword registry of the index. See SearchIndexer.GetKeywords. |
| exact | If true, index stores an exact match entry for this word. |
| score | Relevance score of the word. |
| name | Key used to retrieve the value. |
| minVariations | Minimum number of variations to compute for the value. Cannot be higher than the length of the word. |
| maxVariations | Maximum number of variations to compute for the value. Cannot be higher than the length of the word. |

### Description

Adds a property value to the index. A property is specified with a key and a string value. The value will be stored with multiple variations.

```csharp
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_AddProperty
{
    [MenuItem("Examples/SearchIndexer/AddProperty")]
    public static void Run()
    {
        var si = new SearchIndexer("TestIndexer", FileUtil.GetUniqueTempPathInProject());
        si.Start();

        // Add properties.
        // These items are given a high score, so they will not be displayed first in the result list.
        si.AddProperty("is", "broken", score: 20, si.AddDocument("Bocument 1"));
        si.AddProperty("is", "broken", score: 30, si.AddDocument("Bocument 4"));
        si.AddProperty("color", "red", si.AddDocument("RGB 55"));
        si.AddProperty("color", "reddish", si.AddDocument("RGB 45"));
        si.AddProperty("color", "yellow", si.AddDocument("RGB 66"));
        si.AddProperty("is", "secret", score: -99, si.AddDocument("Top Secret"));

        si.Finish(() =>
        {
            SearchDocuments(si, "Broken documents (Invalid query)", "is=broke", 0);
            SearchDocuments(si, "Broken documents", "is=broken", 2);

            SearchDocuments(si, "Color documents", "color=red", 1);
            SearchDocuments(si, "Color documents", "color:red", 2);
            SearchDocuments(si, "Color documents", "color:yel", 1);

            SearchDocuments(si, "Top documents", "is:secr", 1);
            SearchDocuments(si, "Top documents", "is:secret", 1);
            SearchDocuments(si, "Top documents", "is=secret", 1);

            // Dispose of the SearchIndexer when you are done with it.
            si.Dispose();
        });
    }

    private static void SearchDocuments(SearchIndexer si, string label, string query, int expectedCount)
    {
        var results = si.Search(query).ToList();
        Debug.Assert(results.Count == expectedCount, $"Invalid {label} with {query}, expected {expectedCount} results but got {results.Count}");
        if (results.Count > 0)
            Debug.Log($"{label} ({query}): {string.Join(", ", results.Select(r => $"{r.id} [{r.score}]"))}");
    }
}
```
