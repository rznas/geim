<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetSubFolders.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path of a directory in the Assets folder relative to the project folder root. |

### Returns

**string[]** Returns an array of the folder's subdirectories.

### Description

Obtains the subdirectories of a given directory in the Assets folder.

```csharp
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Get Folder List")]
    static void SubFolderExample()
    {
        //This method prints out the entire folder list of a project into the console
        var folders = AssetDatabase.GetSubFolders("Assets");
        foreach (var folder in folders)
        {
            Recursive(folder);
        }
    }    static void Recursive(string folder)
    {
        Debug.Log(folder);
        var folders = AssetDatabase.GetSubFolders(folder);
        foreach (var fld in folders)
        {
            Recursive(fld);
        }
    }
}
```
