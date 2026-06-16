<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.ClearImporterOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path for the asset. |

### Description

Clears the importer override for the asset.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.AssetImporters;
using UnityEngine.Assertions;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Example Importer Actions")]
    static void AllImporterActions()
    {
        //This sets CubeImporter to be used for the asset
        AssetDatabase.SetImporterOverride<CubeImporter>("Assets/CompanionCube.cube");
        Debug.Log("New importer: " + AssetDatabase.GetImporterOverride("Assets/CompanionCube.cube"));        //This clears importer override and sets it to null
        AssetDatabase.ClearImporterOverride("Assets/CompanionCube.cube");
        Assert.IsNull(AssetDatabase.GetImporterOverride("Assets/CompanionCube.cube"));
    }
}
```
