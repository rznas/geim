<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CacheServer.UploadArtifacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guids | Array of GUIDs to upload to the Accelerator. If array is empty, all assets are uploaded. |
| uploadAllRevisions | Specifies if all revisions of the Assets corresponding to the supplied GUIDs should also be uploaded. Each time an Asset is edited, a new revision is created. Revisions also include non-primary artifacts. That is, artifacts not generated via their default importer for an asset type, but by another importer. One example of this is the Preview importer. That uses the same Asset GUID but a different importer to generate an asset preview. |

### Description

Upload the specified GUIDs to the Accelerator. If keys is empty, all assets are uploaded.

Use this method to upload assets to the Accelerator in an asynchronous way. This API can be used when an already imported project is opened with Unity but was not previously imported using the Accelerator. This method allows you to upload Assets specified by the guids array. If the supplied array is empty or null, all assets are uploaded. Additionally, the command line argument -cacheServerUploadExistingImports if you would like to run this on a Continuous Integration server. **NOTE:** Non-primary artifacts will also be uploaded when using this API. For example, if you have a Prefab with a preview, both the Prefab and its Preview will be uploaded to the Accelerator when specifying only the GUID of the Prefab.

```csharp
using UnityEngine;
using UnityEditor;public class CacheServerExamples
{
    [MenuItem("CacheServer/UploadAllAssetsToCacheServer")]
    public static void UploadAllAssetsToCacheServer()
    {
        //This will upload all Assets to Accelerator
        CacheServer.UploadArtifacts();
    }}
```

```csharp
using UnityEngine;
using UnityEditor;public class CacheServerExamples
{
    [MenuItem("CacheServer/UploadAllPrefabsToCacheServer")]
    public static void UploadAllPrefabsToCacheServer()
    {
        var prefabFileGUIDs = AssetDatabase.FindAssets("t:Prefab");
        var guids = new GUID[prefabFileGUIDs.Length];
        var counter = 0;
        foreach (var curGUID in prefabFileGUIDs)
        {
            guids[counter] = new GUID(curGUID);
            ++counter;
        }        //This will upload all Prefabs to Accelerator
        CacheServer.UploadArtifacts(guids);
    }
}
```

```csharp
using UnityEngine;
using UnityEditor;
public class CacheServerExamples
{
    [MenuItem("CacheServer/UploadAllScriptsToCacheServer")]
    public static void UploadAllScriptsToCacheServer()
    {
        var scriptFileGUIDs = AssetDatabase.FindAssets("t:Script");
        var guids = new GUID[scriptFileGUIDs.Length];
        var counter = 0;
        foreach (var curGUID in scriptFileGUIDs)
        {
            guids[counter] = new GUID(curGUID);
            ++counter;
        }
        //This will upload all Scripts to Accelerator
        CacheServer.UploadArtifacts(guids);
    }
}
```

```csharp
using UnityEngine;
using UnityEditor;public class CacheServerExamples
{
    [MenuItem("CacheServer/UploadAllTextureVersionsToCacheServer")]
    public static void UploadAllTextureVersionsToCacheServer()
    {
        var textureGUIDs = AssetDatabase.FindAssets("t:Texture");
        var guids = new GUID[textureGUIDs.Length];
        var counter = 0;
        foreach (var curGUID in textureGUIDs)
        {
            guids[counter] = new GUID(curGUID);
            ++counter;
        }        //Every time an asset is modified, and imported, a new revision
        //of that Asset is created. As such, the history of the import
        //results of an Asset are kept around, and purged when the Editor 
        //is restarted.
        //Supplying the uploadAllRevisions as true, then all revisions 
        //of an asset will be uploaded.
        CacheServer.UploadArtifacts(guids, true);
    }
}
```
