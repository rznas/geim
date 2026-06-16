<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter.SetAssetBundleNameAndVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetBundleName | AssetBundle name. |
| assetBundleVariant | AssetBundle variant. |

### Description

Set the AssetBundle name and variant.

```csharp
using UnityEngine;
using UnityEditor;
public class SetAssetBundleNameAndVariant : MonoBehaviour
{
    [MenuItem("Tools/SetAssetBundleNameAndVariantExample")]
    static void Example()
    {
        var importer = AssetImporter.GetAtPath("Path/To/Your/Asset"); 
        var newAssetBundleName = "example_bundle_name";
        var newAssetBundleVariant = "v1";
        
        //Set AssetBundleName and AssetBundleVariant
        importer.SetAssetBundleNameAndVariant(newAssetBundleName, newAssetBundleVariant); 
        Debug.Log($"Set AssetBundleName to {importer.assetBundleName} and AssetBundleVariant to {importer.assetBundleVariant} for: {importer.assetPath}");
    }
}
```
