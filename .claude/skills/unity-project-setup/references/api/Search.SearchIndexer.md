<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for a document Indexer which provides methods for retrieving a document given a specific pattern in roughly log(n). This allows you to search a large index more quickly.

This class contains resources that must be disposed when it is no longer needed. See Dispose.

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

### Properties

| Property | Description |
| --- | --- |
| documentCount | Returns the number of documents in the index. |
| keywordCount | Returns the number keywords in the index. |
| minQueryLength | Minimal length of a query. By default it is 1 character. |
| minWordIndexationLength | Minimal indexed word size. Default is 2. |
| name | Name of the index. Generally this name is set by a user from SearchDatabase.Settings. |
| resolveDocumentHandler | Handler used to resolve a document ID to some other data string. |
| skipEntryHandler | Handler used to skip entries. |
| timestamp | Indicates when the search index was last modified. |

### Constructors

| Constructor | Description |
| --- | --- |
| SearchIndexer | Creates a new SearchIndexer. |

### Public Methods

| Method | Description |
| --- | --- |
| AddDocument | Adds a new document to be indexed. |
| AddNumber | Adds a key-number value pair to the index. The key won't be added with variations. |
| AddProperty | Adds a property value to the index. A property is specified with a key and a string value. The value will be stored with multiple variations. |
| AddWord | Adds a new word coming from a document to the index. The word is added with multiple variations allowing partial search. |
| Dispose | Dispose of the SearchIndexer. |
| Finish | Finalizes the current index, sorting and compiling of all the indexes. |
| GetDocument | Returns a search document by its index. |
| GetMetaInfo | Get metadata of a specific document. |
| IndexDocument | Function to override in a concrete SearchIndexer to index the content of a document. |
| IsReady | Indicates if the index is fully built, up to date, and ready for search. |
| Merge | Merge a search index content into the current index. |
| Search | Runs a search query in the index. |
| SetMetaInfo | Set arbiraty metadata on a specific document. |
| SkipEntry | Called when the index is built to see if a specified document needs to be indexed. See SearchIndexer.skipEntryHandler. |
| Start | Starts indexing entries. |
