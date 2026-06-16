<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.AddDocument.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| document | Unique document ID. |
| name | Name of path of the document. |
| source | Source of the document. In example, if the document is a nested object, the source should be the container asset path. |
| checkIfExists | Pass true if this document has some chance of existing already. |
| flags | Flags describing the nature of the document. |

### Returns

**int** The document index/handle used to add new index entries.

### Description

Adds a new document to be indexed.

```csharp
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_AddDocument
{
    [MenuItem("Examples/SearchIndexer/AddDocument")]
    public static void Run()
    {
        var si = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        si.Start();

        // The most efficient way of adding a document is by not checking if the
        // document ID was already added if you are sure that all your document IDs are unique.
        var di = si.AddDocument("document1", checkIfExists: false);

        // You can set `checkIfExists=true` to check for existing document IDs, and the system
        // will return an index of any existing document IDs.
        Debug.Assert(di == si.AddDocument("document1", checkIfExists: true));

        // Once you have added a new document, you need to use the returned handle to index words, numbers and properties.
        si.AddWord("unity", 0, di);
        si.AddProperty("is", "awesome", di);
        si.AddNumber("version", 3.0, score: 0, di);

        si.Finish(() =>
        {
            Debug.Assert(si.Search("unity version>=3").Count() == 1, "No result were found");
            // Dispose of the SearchIndexer when you are done with it.
            si.Dispose();
        });
    }
}
```
