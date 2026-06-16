<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter.RemoveRemap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| identifier | The identifier of the sub-asset. |

### Returns

**bool** Returns true if an element was removed, otherwise false.

### Description

Removes an item from the map of external objects.

Apply changes by writing the metadata and reimporting the Asset.

The external Asset referenced in the map is not affected in any way by this method.

```csharp
using UnityEngine;
using UnityEditor;public class Extractor
{
    public static void RemoveExternalObjectMapping(string assetPath, AssetImporter.SourceAssetIdentifier subAssetIdentifier)
    {
        var assetImporter = AssetImporter.GetAtPath(assetPath);
        assetImporter.RemoveRemap(subAssetIdentifier);        AssetDatabase.WriteImportSettingsIfDirty(assetPath);
        AssetDatabase.ImportAsset(assetPath, ImportAssetOptions.ForceUpdate);
    }
}
```

Additional resources: AssetImporter.AddRemap.
