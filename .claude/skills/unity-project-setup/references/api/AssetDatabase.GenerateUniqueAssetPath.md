<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GenerateUniqueAssetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path name to create. |

### Description

Creates a new unique path for an asset.

When you call this method, Unity checks to see whether an asset already exists with the matching path and filename you supply. If it doesn't exist, Unity returns the same string you supplied. If an existing asset has the same path and filename, Unity appends the number 1 to the filename and checks again. It continues incrementing this number and checking again until it finds a filename that doesn't exists, and returns the path with that new unique filename.

All paths generated are relative to the project folder, for example: `Assets/Textures/hello.png`.

By default, Unity uses a space to separate the filename from the number it appends. For example, if you supply the path `Assets/Textures/hello.png` and that file already exists, Unity returns `Assets/Textures/hello 1.png`. To change this behavior, disable the Space Before Number in Asset Names setting in the Editor, or set EditorSettings.assetNamingUsesSpace to false.

```csharp
using UnityEditor;
using UnityEngine;public class GenerateUniqueAssetPathExample : MonoBehaviour
{
    [MenuItem("APIExamples/GenerateUniqueAssetPath")]
    static void GenerateUniqueAssetPathForFilesWithSameName()
    {
        for (int i = 0; i < 5; ++i)
        {
            //The file names that this should create are:
            // Assets/Artifacts/material.mat
            // Assets/Artifacts/material 1.mat
            // Assets/Artifacts/material 2.mat
            // Assets/Artifacts/material 3.mat
            // Assets/Artifacts/material 4.mat
            var uniqueFileName = AssetDatabase.GenerateUniqueAssetPath("Assets/Artifacts/material.mat");            Material material = new Material(Shader.Find("Specular"));
            AssetDatabase.CreateAsset(material, uniqueFileName);
        }
    }
}
```
