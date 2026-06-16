<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the indexer. |
| filePath | Path of the indexer on disk. |

### Description

Creates a new SearchIndexer.

```csharp
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer
{
    [MenuItem("Examples/SearchIndexer/Class")]
    public static void Run()
    {
        // Create a search indexer saved in the project temp folder
        using var searchIndexer = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());

        // Indicate that searchIndexer is about to index documents
        searchIndexer.Start();

        // Add some documents
        var unityDocumentIndex = searchIndexer.AddDocument("Unity Technologies");

        // Index some words
        var baseScore = 42;
        searchIndexer.AddWord("unity", baseScore, unityDocumentIndex);
        searchIndexer.AddWord("is", baseScore, unityDocumentIndex);
        searchIndexer.AddWord("awesome", baseScore, unityDocumentIndex);

        // Indicate that searchIndexer is finished indexing documents and is ready to search.
        searchIndexer.Finish();

        // Wait for the indexation to finish.
        while (!searchIndexer.IsReady())
            ;

        // Search the index
        foreach (var result in searchIndexer.Search("uni"))
            Debug.Log($"Found document [{result.index}] {result.id} ({result.score})");
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the indexer. |

### Description

Creates a new default SearchIndexer.
