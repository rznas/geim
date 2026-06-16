<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetImplicitAssetBundleVariantName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPath | The asset's path. |

### Returns

**string** Returns the name of the AssetBundle Variant that a given asset belongs to. See the method description for more details.

### Description

Returns the name of the AssetBundle Variant that a given asset belongs to.

If the asset has been explicitly assigned to an AssetBundle Variant, then that value is returned. If the asset doesn't belong to an AssetBundle Variant, its parent folders are traversed until one that belongs to an AssetBundle Variant is found. If a folder that matches this condition is found, its AssetBundle Variant name is returned. If none is found, an empty string is returned.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine; public class AssetDatabaseExamples : MonoBehaviour
 {
     [MenuItem("AssetDatabase/Export Ground Textures")]
     static void ExportGroundTextures()
     {
         var groundTextures4k = new List<string>();
         var groundTextures2k = new List<string>();
         foreach (var guid in AssetDatabase.FindAssets("l:Ground", new []{"Assets/Textures"}))
         {
             var path = AssetDatabase.GUIDToAssetPath(guid);
             if(AssetDatabase.GetImplicitAssetBundleVariantName(path) == "4k")
                 groundTextures4k.Add(path);
             else
                 groundTextures2k.Add(path);
         }
         AssetDatabase.ExportPackage(groundTextures4k.ToArray(), "groundTextures4k.unitypackage");
         AssetDatabase.ExportPackage(groundTextures2k.ToArray(), "groundTextures2k.unitypackage");
     }
 }
```
