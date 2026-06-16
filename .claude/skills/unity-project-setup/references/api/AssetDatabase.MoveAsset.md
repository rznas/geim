<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.MoveAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| oldPath | The path where the asset currently resides. |
| newPath | The path which the asset should be moved to. |

### Returns

**string** An empty string if the asset has been successfully moved, otherwise an error message.

### Description

Move an asset file (or folder) from one folder to another.

All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png".

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Move All Scenes To 'Scenes' Folder")]
    static void MoveScenes()
    {
        foreach (var asset in AssetDatabase.FindAssets("t: Scene"))
        {
            var path = AssetDatabase.GUIDToAssetPath(asset);
            var assetName = AssetDatabase.LoadMainAssetAtPath(path).name;
            AssetDatabase.MoveAsset(path, $"Assets/Scenes/{assetName}.unity");
        }
    }
}
```
