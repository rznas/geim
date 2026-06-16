<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter-assetBundleName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get or set the AssetBundle name.

This property makes it possible to programmatically access the assignment of Assets to AssetBundles, corresponding to the AssetBundle control found at the bottom of the Inspector. This property is stored in the .meta file for the Asset, and inside the AssetDatabase. 
 
 Alternatively, AssetBundle contents can also be defined programmatically by filling in an array of AssetBundleBuild structures when calling BuildPipeline.BuildAssetBundles. 
 
 Additional resources: AssetBundleBuild.assetBundleName, AssetDatabase.GetAssetPathsFromAssetBundle, AssetDatabase.GetImplicitAssetBundleName.

```csharp
using UnityEditor;
using UnityEngine;public class AssetBundleNameExample : MonoBehaviour
{
    [MenuItem("Tools/AssetBundleNameExample")]
    static void Example()
    {
        //Get AssetImporter for a specific asset
        var importer = AssetImporter.GetAtPath("Path/To/Your/Asset");
        //Get asset bundle name
        var assetBundleName = importer.assetBundleName;
        
        Debug.Log($"AssetBundleName: {assetBundleName} for: {importer.assetPath}");
        //Set asset bundle name
        importer.assetBundleName = "new_asset_bundle_name";
        //Save and reimport to apply changes
        importer.SaveAndReimport();
        Debug.Log($"Updated AssetBundleName to: {importer.assetBundleName} for: {importer.assetPath}");
    }
}
```
