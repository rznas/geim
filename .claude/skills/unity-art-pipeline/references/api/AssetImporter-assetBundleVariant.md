<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter-assetBundleVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get or set the AssetBundle variant.

This property has a value when the Asset is assigned to a specific variant of an AssetBundle, and corresponds to the second dropdown of the AssetBundle control found at the bottom of the Inspector. Its value is stored in the .meta file for the Asset, and inside the AssetDatabase. 
 
 This property is not used when AssetBundles are being built programmatically with the signature of BuildPipeline.BuildAssetBundles that accepts an array of AssetBundleBuild structures. 
 
 Additional resources: AssetImporter.assetBundleName, AssetBundleBuild.assetBundleVariant.

```csharp
using UnityEngine;
using UnityEditor;
public class AssetBundleVariantExample : MonoBehaviour
{
    [MenuItem("Tools/AssetBundleVariantExample")]
    static void Example()
    {
        var importer = AssetImporter.GetAtPath("Path/To/Your/Asset");
        
        //Get asset bundle variant
        var assetBundleVariant = importer.assetBundleVariant;
        
        Debug.Log($"Asset bundle variant: {assetBundleVariant} for {importer.assetPath}");
        //Set asset bundle variant
        importer.assetBundleVariant = "new_asset_bundle_variant";
        //Save and reimport to apply changes
        importer.SaveAndReimport();
        Debug.Log($"Updated AssetBundleVariant to: {importer.assetBundleVariant} for: {importer.assetPath}");
    }
}
```
