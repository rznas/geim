<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.IsReady.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if the index is ready for search.

### Description

Indicates if the index is fully built, up to date, and ready for search.

```csharp
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

static class Example_SearchIndexer_IsReady
{
    [MenuItem("Examples/SearchIndexer/IsReady")]
    public static void Run()
    {
        // Create an indexer and wait for indexing to complete in the current thread.
        using var si = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        si.Start();
        si.AddDocument("document 1");
        si.AddDocument("document 2");
        si.Finish();
        while (!si.IsReady())
            ;
        Debug.Log("Indexing is completed");
    }
}
```
