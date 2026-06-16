<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer-skipEntryHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handler used to skip entries.

```csharp
using System;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_skipEntryHandler
{
    [MenuItem("Examples/SearchIndexer/skipEntryHandler")]
    public static void Run()
    {
        using var searchIndexer = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject())
        {
            // The skip entry handler can be used to prevent some documents from being indexed.
            skipEntryHandler = SkipDocumentThatStartsWithAnUnderscore
        };

        searchIndexer.Start();
        {
            var di = searchIndexer.AddDocument("A/Valid/File/Path");
            Debug.Assert(di >= 0);

            // This document should get discarded.
            di = searchIndexer.AddDocument("_Not/Valid/File/Path");
            Debug.Assert(di == -1);
        }
        searchIndexer.Finish(Array.Empty<string>());

        Debug.Log($"{searchIndexer.documentCount} document were indexed");
    }

    private static bool SkipDocumentThatStartsWithAnUnderscore(string documentId)
    {
        return documentId[0] == '_';
    }
}
```
