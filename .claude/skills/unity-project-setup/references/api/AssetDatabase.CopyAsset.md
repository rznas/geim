<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.CopyAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path of the source asset. |
| newPath | Project relative path of the new asset to create. |

### Returns

**bool** Returns true if the copy operation is successful or false if part of the process fails.

### Description

Duplicates the asset at `path` and stores it at `newPath`.

All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png".

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Duplicate Material")]
    static void DuplicateMaterial()
    {
        const string assetPath = "Assets/Materials/CarMaterial.mat";
        for (var i = 0; i < 20; i++)
        {
            if(!AssetDatabase.CopyAsset(assetPath, $"Assets/Duplicates/Materials/CarMaterial{i}.mat"))
                Debug.LogWarning($"Failed to copy {assetPath}");
        }
    }
}
```

Any errors and warnings from the copy operation are reported in the log and the console.
