<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.GetDocument.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Valid index of the document to access. |

### Returns

**SearchDocument** Indexed search document.

### Description

Returns a search document by its index.

```csharp
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_GetDocument
{
    [MenuItem("Examples/SearchIndexer/GetDocument")]
    public static void Run()
    {
        var si = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        si.Start();
        si.AddDocument("document 1");
        si.AddDocument("document 2");
        si.AddDocument("document 3");
        si.Finish(() =>
        {
            // Enumerate all documents
            for (int di = 0; di < si.documentCount; ++di)
            {
                var doc = si.GetDocument(di);
                Debug.Assert(doc.id.StartsWith("document"));
                Debug.Log(doc.id);
            }

            // Dispose of the SearchIndexer when you are done with it.
            si.Dispose();
        });
    }
}
```
