<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.IsValidFolder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path to the folder. |

### Returns

**bool** Returns true if the folder exists.

### Description

Given a path to a folder, returns true if it exists, false otherwise.

The given path is relative to the project folder.
 The Assets folder and all its subfolders are considered valid. While the Packages folder itself is not a valid folder, its subfolders are.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Create Folder Structure")]
    static void CreateFolderStructure()
    {
        var folderList = new List<string> { "Animations", "Textures", "Materials", "Prefabs", "Resources", "Scripts" };        //Check if folder exists with IsValidFolder if it doesn't create it
        foreach (var folder in folderList)
        {
            if (AssetDatabase.IsValidFolder($"Assets/{folder}")) continue;
            AssetDatabase.CreateFolder("Assets", folder);
        }
    }
}
```
