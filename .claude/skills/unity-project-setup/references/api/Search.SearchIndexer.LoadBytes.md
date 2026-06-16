<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.LoadBytes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| bytes | Binary buffer containing the index representation. |
| finished | Callback that triggers when the index is fully loaded. The callback parameters indicates if loading was succesful. |

### Returns

**bool** Returns false if the index is of an unsupported version or if there was a problem initializing the reading thread.

### Description

Loads the index asynchronously (in another thread) from a binary buffer.

```csharp
using System.IO;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_LoadBytes
{
    const string tempIndexPath = "Temp/LoadBytes.db";

    [MenuItem("Examples/SearchIndexer/LoadBytes")]
    public static void Run()
    {
        var si = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        si.Start();
        var di = si.AddDocument("document 1");
        si.AddNumber("test", 2, 0, di);
        si.Finish(() =>
        {
            File.WriteAllBytes(tempIndexPath, si.SaveBytes());
            // Dispose of the SearchIndexer when you are done with it.
            si.Dispose();
            ReloadIndex();
        });
    }

    private static void ReloadIndex()
    {
        var indexBytes = File.ReadAllBytes(tempIndexPath);
        var si = new SearchIndexer("SearchIndexerExample2", FileUtil.GetUniqueTempPathInProject());

        // Load the search index from a binary stream.
        si.LoadBytes(indexBytes, (success) =>
        {
            Debug.Assert(success);
            Debug.Log($"Index loaded from {indexBytes} bytes");
            // Dispose of the SearchIndexer when you are done with it.
            si.Dispose();
        });
    }
}
```
