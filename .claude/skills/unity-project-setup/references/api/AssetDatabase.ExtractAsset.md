<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.ExtractAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| asset | The sub-asset to extract. |
| newPath | The file path of the new Asset. |

### Returns

**string** An empty string if Unity has successfully extracted the Asset, or an error message if not.

### Description

Creates an external Asset from an object (such as a Material) by extracting it from within an imported asset (such as an FBX file).

**NOTE:** The feature is currently only available for materials embedded in model assets.

All file paths are relative to the project folder. For example: "Assets/Materials/myMaterial.mat".

Method throws **ArgumentNullException** when the Asset is *null* and **ArgumentException** when the file path is *null or empty*.

```csharp
using UnityEngine;
using UnityEditor;public class Extractor
{
    public static void ExtractFromAsset(Object subAsset, string destinationPath)
    {
        string assetPath = AssetDatabase.GetAssetPath(subAsset);        AssetDatabase.ExtractAsset(subAsset, destinationPath);        AssetDatabase.WriteImportSettingsIfDirty(assetPath);
        AssetDatabase.ImportAsset(assetPath, ImportAssetOptions.ForceUpdate);
    }
}
```
