<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.MoveAssetToTrash.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path of the asset or folder to be deleted. |

### Returns

**bool** Returns true if the asset has been successfully removed, false if it doesn't exist or couldn't be removed.

### Description

Moves the specified asset or folder to the OS trash.

Paths should be relative to the project folder, for example: "Assets/MyTextures/hello.png"

Additional resources: AssetDatabase.DeleteAsset, AssetDatabase.DeleteAssets, AssetDatabase.MoveAssetsToTrash.

```csharp
using UnityEngine;
using UnityEditor;//Note: When moving many Assets to trash and using version control integration it's better to use MoveAssetsToTrash method for performance reasons
public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Move All Files In Folder To Trash")]
    static void MoveAllFilesInFolderToTrash()
    {
        string[] unusedFolder = { "Assets/Unused" };
        foreach (var asset in AssetDatabase.FindAssets("", unusedFolder))
        {
            var path = AssetDatabase.GUIDToAssetPath(asset);
            AssetDatabase.MoveAssetToTrash(path);
        }
    }
}
```
