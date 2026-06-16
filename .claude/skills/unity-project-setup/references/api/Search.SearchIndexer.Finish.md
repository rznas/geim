<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.Finish.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| threadCompletedCallback | Callback invoked when the index is ready to be used. |
| removedDocuments | Documents to be removed from current index (if any). |
| saveBytes | Indicates if the system should return the binary stream of the index as a byte array. |

### Description

Finalizes the current index, sorting and compiling of all the indexes.

```csharp
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

/// <summary>
/// SearchIndexer.Finish is always a threaded operation, meaning that all indexes
/// will be computed in a thread and Search will callback when the index is ready
/// to be used.
/// </summary>
static class Example_SearchIndexer_Finish
{
    [MenuItem("Examples/SearchIndexer/Finish")]
    public static void Run()
    {
        // Create an indexer and wait for indexing to complete in the current thread.
        var si = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        si.Start();
        si.AddProperty("wait", "yes", si.AddDocument("Wait"));
        si.Finish();
        while (!si.IsReady())
            ;
        Debug.Assert(si.IsReady());

        // Reset the indexer and receive a callback when the indexing is completed.
        si.Start(clear: true);
        si.AddProperty("wait", "callback", si.AddDocument("Callback"));
        si.Finish(() => Debug.Log("Indexing is ready."));
        while (!si.IsReady())
            ;

        // Reset the indexer and receive a callback when the indexing is completed.
        // With that override you can also indicate if you want any documents to be deleted
        si.Start(clear: false);
        si.AddProperty("wait", "callback", si.AddDocument("CallbackBytes"));
        si.AddProperty("wait", "callback", si.AddDocument("DeleteMe"));
        si.Finish(() =>
        {
            Debug.Log($"Indexing is ready.");
            // Dispose of the SearchIndexer when you are done with it.
            si.Dispose();
        }, new string[] { "Callback", "DeleteMe" });
    }
}
```
