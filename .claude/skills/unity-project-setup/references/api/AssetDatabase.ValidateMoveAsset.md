<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.ValidateMoveAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| oldPath | The path where the asset currently resides. |
| newPath | The path which the asset should be moved to. |

### Returns

**string** An empty string if the asset can be moved, otherwise an error message.

### Description

Checks if an asset file can be moved from one folder to another. (Without actually moving the file).

All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png".

Additional resources: AssetDatabase.MoveAsset.

```csharp
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Move With Validate")]
    public static void MoveWithValidate()
    {
        for (var i = 0; i < 5; i++)
        {
            var oldPath = $"Assets/Textures/Building/BuildingTexture{i}.png";
            var newPath = $"Assets/Textures/Construction/BuildingTexture{i}.png";
            var moveResult = AssetDatabase.ValidateMoveAsset(oldPath, newPath);            if (moveResult == "")
                AssetDatabase.MoveAsset(oldPath, newPath);
            else
                Debug.LogError($"Couldn't move {oldPath} because {moveResult}");
        }
    }
}
```
