<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer-documentCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the number of documents in the index.

```csharp
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_documentCount
{
    [MenuItem("Examples/SearchIndexer/documentCount")]
    public static void Run()
    {
        var searchIndexer = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        searchIndexer.Start();
        {
            searchIndexer.AddDocument("document 1");
            searchIndexer.AddDocument("document 2");
            searchIndexer.AddDocument("document 3");
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
        Debug.Log($"{si.documentCount} document were indexed");
    }
}
```
