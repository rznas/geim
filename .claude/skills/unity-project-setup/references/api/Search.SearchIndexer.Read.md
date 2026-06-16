<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.Read.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | The stream to read the index from. |
| checkVersionOnly | If true, verifies the version of the index. |

### Returns

**bool** Returns false if the version of the index is not supported.

### Description

Reads a stream and populates the index from it.

```csharp
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_Read
{
    [MenuItem("Examples/SearchIndexer/Read")]
    public static void Run()
    {
        var si = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        si.Start();
        si.AddDocument("document 1");
        si.AddDocument("document 2");
        si.Finish(() =>
        {
            File.WriteAllBytes("Temp/Read.index", si.SaveBytes());
            // Dispose of the SearchIndexer when you are done with it.
            si.Dispose();

            // Stream the index from disk but only check if the stream is valid.
            using (var fileStream = new FileStream("Temp/Read.index", FileMode.Open, FileAccess.Read, FileShare.Read))
            {
                using var copyIndex = new SearchIndexer("SearchIndexerExample2", FileUtil.GetUniqueTempPathInProject());
                Debug.Assert(copyIndex.Read(fileStream, checkVersionOnly: true));
            }

            // Completely stream the index from disk.
            using (var fileStream = new FileStream("Temp/Read.index", FileMode.Open, FileAccess.Read, FileShare.Read))
            {
                using var copyIndex = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
                Debug.Assert(copyIndex.Read(fileStream, checkVersionOnly: false));
                Debug.Assert(copyIndex.GetDocument(0).id == "document 1");
            }
        });
    }
}
```
