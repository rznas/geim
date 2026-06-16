<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetImporterType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guid | GUID of the asset to get the importer type from. |

### Returns

**Type** Returns the type of the importer associated with the given asset.

### Description

Returns the type of importer associated with an asset without loading the asset.

This method allows you to determine which importer is associated with an asset. This method is more efficient than AssetImporter.GetAtPath, which also loads the object. If you need to check a large number of asset importers at once, you should use the batch version of this method AssetDatabase.GetImporterTypes.

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples
{
    [MenuItem("AssetDatabase/GetMatchingAssetType")]
    public static void GetMatchingAssetType()
    {
        var matchingAssets = AssetDatabase.FindAssets("Powerup");
        var matchingAssetGuid = new GUID(matchingAssets[0]);
        Debug.Log($"Importer type: {AssetDatabase.GetImporterType(matchingAssetGuid)}");
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | Path of asset to get importer Type from. |

### Returns

**Type** Returns the type of the importer associated with the given asset.

### Description

Returns the type of the importer associated with an asset without loading the asset.

The asset path you provide should be relative to the project folder root. For example, "Assets/MyTextures/hello.png". This method allows you to determine which importer is associated with an asset. This method is more efficient than AssetImporter.GetAtPath, which also loads the object. If you need to check a large number of asset importers at once, you should use the batch version of this method AssetDatabase.GetImporterTypes.

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples
{
    [MenuItem("AssetDatabase/GetImporterTypeOfSelectedObject")]
    public static void GetImporterTypeOfSelectedObject()
    {
        var selectedObject = Selection.activeObject;
        var objectPath = AssetDatabase.GetAssetPath(selectedObject);
        Debug.Log($"Importer type: {AssetDatabase.GetImporterType(objectPath)}");
    }
}
```
