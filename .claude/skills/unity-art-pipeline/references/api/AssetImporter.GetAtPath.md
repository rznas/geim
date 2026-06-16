<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter.GetAtPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The project-relative path of the asset to find the asset importer for. |

### Returns

**AssetImporter** The `AssetImporter` for the given asset path, or `null` if the asset doesn't exist.

### Description

Retrieves the asset importer for the asset at `path`.

Additional resources: ModelImporter, TextureImporter, AudioImporter.

```csharp
using UnityEngine;
using UnityEditor;
public class GetAtPathExample
{
    [MenuItem("Tools/GetAtPathExample")]
    static void Example()
    {
        //Get AssetImporter for a specific asset
        var importer = AssetImporter.GetAtPath("Path/To/Your/Asset");
        
        //Set AssetBundleName
        importer.assetBundleName = "new_asset_pack_bundle_name";
        Debug.Log($"Set AssetBundleName to: {importer.assetBundleName} for: {importer.assetPath}");
    }
}
```
