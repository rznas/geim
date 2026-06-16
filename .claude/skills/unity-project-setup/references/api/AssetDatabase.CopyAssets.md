<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.CopyAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| paths | Filesystem paths of the source assets. |
| newPaths | Filesystem paths of the new assets to create. |

### Returns

**bool** Returns true if the copy operation is successful or false if part of the process fails.

### Description

Duplicates assets in `paths` and stores them in `newPaths`.

All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png". `paths` and `newPaths` must contain the same number of items.

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Duplicate Materials")]
    static void DuplicateMaterials()
    {
        string[] sourcePaths = new []
        {
            "Assets/Materials/CarMaterial.mat",
            "Assets/Materials/TruckMaterial",
            "Assets/Materials/BoatMaterial"
        };
        string[] targetPaths = new []
        {
            "Assets/Duplicates/Materials/CarMaterial_Dup.mat",
            "Assets/Duplicates/Materials/TruckMaterial_Dup",
            "Assets/Duplicates/Materials/BoatMaterial_Dup"
        };
        if(!AssetDatabase.CopyAssets(sourcePaths, targetPaths))
            Debug.LogWarning($"Failed to copy assets");
    }
}
```

You cannot use this function during an import (either in process or from an asset worker), as it would result in new assets created in the middle of an import. Any errors and warnings from the copy operation are reported in the log and the console.
