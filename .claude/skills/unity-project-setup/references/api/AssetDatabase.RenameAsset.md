<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.RenameAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| pathName | The path where the asset currently resides. |
| newName | The new name which should be given to the asset. |

### Returns

**string** An empty string, if the asset has been successfully renamed, otherwise an error message.

### Description

Rename an asset file.

All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png".

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Rename Materials")]
    static void RenameMaterials()
    {
        var matID = 0;
        foreach (var asset in AssetDatabase.FindAssets("t: Material New Material"))
        {
            var path = AssetDatabase.GUIDToAssetPath(asset);
            AssetDatabase.RenameAsset(path, $"ShipMaterial{matID++}");
        }
    }
}
```
