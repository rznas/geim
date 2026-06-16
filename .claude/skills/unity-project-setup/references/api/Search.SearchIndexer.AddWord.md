<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.AddWord.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| word | Word to add to the index. |
| score | Relevance score of the word. |
| documentIndex | Document where the indexed word was found. |
| size | Number of variations to compute. |
| minVariations | Minimum number of variations to compute. Cannot be higher than the length of the word. |
| maxVariations | Maximum number of variations to compute. Cannot be higher than the length of the word. |

### Description

Adds a new word coming from a document to the index. The word is added with multiple variations allowing partial search.

```csharp
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_AddWord
{
    [MenuItem("Examples/SearchIndexer/AddWord")]
    public static void Run()
    {
        // Create a search indexer
        var searchIndexer = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());

        // Indicate that Search is about to index documents.
        searchIndexer.Start();

        // Add a document
        var di = searchIndexer.AddDocument("My/File/Path");

        // Index some words
        var baseScore = 42;

        // These calls will index the words "awesome", "unity" and "thisisitasuperlongword". These words will be searchable by prefixes or exact matches.
        searchIndexer.AddWord("awesome", baseScore, di);
        searchIndexer.AddWord("unity", baseScore, di);
        searchIndexer.AddWord("thisisitasuperlongword", baseScore, di);

        // Indicate that searchIndexer is finished indexing a document and is ready to search.
        searchIndexer.Finish(() =>
        {
            // Search the index
            foreach (var result in searchIndexer.Search("unity awes this"))
                Debug.Log($"Found document [{result.index}] {result.id} ({result.score})");

            // Dispose of the SearchIndexer when you are done with it.
            searchIndexer.Dispose();
        });
    }
}
```
