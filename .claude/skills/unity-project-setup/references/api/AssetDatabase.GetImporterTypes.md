<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetImporterTypes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| guids | Array of asset GUIDs to check. |

### Returns

**Type[]** Returns the importer type for each asset in the array.

### Description

Returns the types of importers associated with the specified array of assets, without loading those assets.

This method is a batch version of AssetDatabase.GetImporterType. Use this method if you need to check a large number of asset importers at once. **Note**: GUID Arrays can be implicitly cast to ReadOnlySpan, see example for usage.

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples
{
    [MenuItem("AssetDatabase/GetMatchingAssetTypes")]
    public static void GetMatchingAssetTypes()
    {
        var matchingAssets = AssetDatabase.FindAssets("Powerup");
        GUID[] guids = new GUID[matchingAssets.Length];        for(int i = 0; i < guids.Length; ++i)
        {
            guids[i] = new GUID(matchingAssets[i]);
        }        var matchingTypes = AssetDatabase.GetImporterTypes(guids);        foreach (var curType in matchingTypes)
        {
            Debug.Log($"Importer type: {curType}");
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| paths | Array of asset paths to check. |

### Returns

**Type[]** Returns the importer type for each asset in the array.

### Description

Returns the types of importers associated with the specified array of assets, without loading those assets.

The asset paths you provide should be relative to the project folder root. For example, "Assets/MyTextures/hello.png". This method is a batch version of AssetDatabase.GetImporterType. Use this method if you need to check a large number of asset importers at once.

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples
{
    [MenuItem("AssetDatabase/GetImporterTypeOfSelectedObjects")]
    public static void GetImporterTypeOfSelectedObjects()
    {
        var selectedObjects = Selection.objects;
        string[] paths = new string[selectedObjects.Length];        for (int i = 0; i < paths.Length; ++i)
        {
            paths[i] = AssetDatabase.GetAssetPath(selectedObjects[i]);
        }        var selectedObjectTypes = AssetDatabase.GetImporterTypes(paths);        foreach (var curType in selectedObjectTypes)
        {
            Debug.Log($"Importer type: {curType}");
        }
    }
}
```
