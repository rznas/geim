<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.ImportPackage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| packagePath | The path to the package. |
| interactive | Set to true to open an import dialog box on import. Set to false to import all assets in the package into the project. |

### Description

Imports the package at `packagePath` into the current project.

```csharp
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Import Package Example")]
    static void ImportPackageExample()
    {
        var texturePackageNames = new[] {"groundTextures2k.unitypackage", "groundTextures4k.unitypackage"};
        foreach (var package in texturePackageNames)
        {
            AssetDatabase.ImportPackage(package, false);
        }
    }
}
```
