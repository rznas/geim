<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.ExportPackage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPathNames | An array of asset paths to export. |
| fileName | The file path to create a new unitypackage file at. |
| flags | Options for how Unity exports a package. |
| assetPathName | The path of an asset to export. |

### Description

Exports the assets identified by `assetPathNames` to a unitypackage file in `fileName`.

Additional resources: ExportPackageOptions for information on how you can affect what gets exported.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Export")]
    static void Export()
    {
        var exportedPackageAssetList = new List<string>();
        //Find all shaders that have "Surface" in their names and add them to the list
        foreach (var guid in AssetDatabase.FindAssets("t:Shader Surface", new []{"Assets/Shaders"}))
        {
            var path = AssetDatabase.GUIDToAssetPath(guid);
            exportedPackageAssetList.Add(path);
        }        //Add Prefabs folder into the asset list
        exportedPackageAssetList.Add("Assets/Prefabs");
        //Export Shaders and Prefabs with their dependencies into a .unitypackage
        AssetDatabase.ExportPackage(exportedPackageAssetList.ToArray(), "ShadersAndPrefabsWithDependencies.unitypackage",
            ExportPackageOptions.Recurse | ExportPackageOptions.IncludeDependencies);
    }
}
```
