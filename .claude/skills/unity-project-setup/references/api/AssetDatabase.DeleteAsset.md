<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.DeleteAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path of the asset or folder to be deleted. |

### Returns

**bool** Returns true if the asset has been successfully removed, false if it doesn't exist or couldn't be removed.

### Description

Deletes the specified asset or folder.

Paths should be relative to the project folder, for example: "Assets/MyTextures/hello.png"

Additional resources: AssetDatabase.DeleteAssets, AssetDatabase.MoveAssetToTrash, AssetDatabase.MoveAssetsToTrash.

```csharp
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Delete Files In 'Unused' Folder")]
    static void DeleteAllFilesInFolder()
    {
        //"Assets/Unused" folder should exist before running this Method
        string[] unusedFolder = { "Assets/Unused" };
        foreach (var asset in AssetDatabase.FindAssets("", unusedFolder))
        {
            var path = AssetDatabase.GUIDToAssetPath(asset);
            AssetDatabase.DeleteAsset(path);
        }
    }
}
```
