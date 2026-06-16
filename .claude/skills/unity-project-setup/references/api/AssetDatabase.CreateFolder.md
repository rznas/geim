<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.CreateFolder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| parentFolder | The path to the parent folder. Must start with "Assets/". |
| newFolderName | The name of the new folder. |

### Returns

**string** The GUID of the newly created folder, if the folder was created successfully. Otherwise returns an empty string.

### Description

Creates a new folder, in the specified parent folder.

The parent folder string must start with the "Assets" folder, and all folders within the parent folder string must already exist. For example, when specifying "Assets/ParentFolder1/Parentfolder2/", the new folder will be created in "ParentFolder2" only if ParentFolder1 and ParentFolder2 already exist.

Note: When Unity attempts to create a folder, if a folder with the same name exists at the same path, Unity adds a sequential number to the end of the file name. For example, "My Folder" becomes "My Folder 1".

```csharp
using UnityEngine;
using UnityEditor;public class CreateFolderExample
{
    [MenuItem("GameObject/Create Folder and Some Assets")]
    static void CreateFolder()
    {
        AssetDatabase.CreateFolder("Assets", "My Folder");
        string guid = AssetDatabase.CreateFolder("Assets/My Folder", "My Another Folder");
        string newFolderPath = AssetDatabase.GUIDToAssetPath(guid);
        Debug.Log(newFolderPath);        // Create a simple material asset in the created folder
        Material material = new Material(Shader.Find("Specular"));
        string newAssetPath = newFolderPath + "/MyMaterial.mat";
        AssetDatabase.CreateAsset(material, newAssetPath);
        Debug.Log(AssetDatabase.GetAssetPath(material));
    }
}
```
