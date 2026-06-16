<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer.GetMetaInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| documentId | Document id of the document. |

### Returns

**string** Metadata of the document.

### Description

Get metadata of a specific document.

```csharp
using UnityEditor;
using UnityEditor.Search;

/// <summary>
/// Use GetMetaInfo to store some additional data about a specific document within the index db
/// that you can retrieve later if needed.
/// </summary>
static class Example_SearchIndexer_GetMetaInfo
{
    [MenuItem("Examples/SearchIndexer/GetMetaInfo")]
    public static void Run()
    {
        using var si = new SearchIndexer("SearchIndexerExample", FileUtil.GetUniqueTempPathInProject());
        si.Start();
        var newDocumentId = System.Guid.NewGuid().ToString("N");
        var di = si.AddDocument(newDocumentId);
        si.SetMetaInfo(newDocumentId, "Please save this data for later");
        si.Finish(removedDocuments: null);
    }
}
```
