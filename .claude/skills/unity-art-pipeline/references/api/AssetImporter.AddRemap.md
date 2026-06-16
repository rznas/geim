<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporter.AddRemap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| identifier | The identifier of the sub-asset. |
| externalObject | The object to be mapped to the internal object. Can belong to another Prefab or Asset, but not the Asset that is being changed. |

### Description

Map a sub-asset from an imported asset (such as an FBX file) to an external Asset of the same type.

Apply changes by writing the metadata and reimporting the Asset. Instances of the Asset automatically use the mapped object once you have reimported the Asset.

If the type of the external asset does not match the type of the sub-asset, or if the reference is null, instances of the Asset will continue to use the internal asset without producing an error.

```csharp
using UnityEngine;
using UnityEditor;public class Extractor
{
    public static void ExtractFromAsset(Object subAsset, string destinationPath)
    {
        string assetPath = AssetDatabase.GetAssetPath(subAsset);        var clone = Object.Instantiate(subAsset);
        AssetDatabase.CreateAsset(clone, destinationPath);        var assetImporter = AssetImporter.GetAtPath(assetPath);
        assetImporter.AddRemap(new AssetImporter.SourceAssetIdentifier(subAsset), clone);        AssetDatabase.WriteImportSettingsIfDirty(assetPath);
        AssetDatabase.ImportAsset(assetPath, ImportAssetOptions.ForceUpdate);
    }
}
```

Additional resources: AssetImporter.RemoveRemap.
