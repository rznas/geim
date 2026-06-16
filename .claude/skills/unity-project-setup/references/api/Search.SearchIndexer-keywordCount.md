<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer-keywordCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the number keywords in the index.

```csharp
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_keywordCount
{
    [MenuItem("Examples/SearchIndexer/keywordCount")]
    public static void Run()
    {
        var searchIndexer = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        searchIndexer.Start();
        {
            var di = searchIndexer.AddDocument("unity");

            // Add some properties and save the filter keywords.
            searchIndexer.AddProperty("is", "awesome", di, saveKeyword: true);
            searchIndexer.AddProperty("search", "powerful", di, saveKeyword: true);
        }
        searchIndexer.Finish(() =>
        {
            OnIndexReady(searchIndexer);
            // Dispose the SearchIndexer when you are done with it.
            searchIndexer.Dispose();
        });
    }

    private static void OnIndexReady(SearchIndexer si)
    {
        Debug.Log($"Index contains {si.keywordCount} keywords");
    }
}
```
