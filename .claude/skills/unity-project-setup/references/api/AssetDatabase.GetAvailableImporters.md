<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetAvailableImporters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path for the asset. |

### Returns

**Type[]** Returns an array of importer types that can handle the specified Asset.

### Description

Gets the importer types associated with a given Asset path.

```csharp
using System;
using UnityEngine;
using UnityEditor;
using UnityEditor.AssetImporters;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Available Importer Types for cube")]
    static void AvailableImporterTypeCube()
    {
        Type[] CubeTypes = AssetDatabase.GetAvailableImporters("Assets/CompanionCube.cube");
        for (int i = 0; i < CubeTypes.Length; i++)
        {
            Debug.Log("Available Importer Type for cube: " + CubeTypes[i]);
        }
    }    //This is Example Importer for cube
    [ScriptedImporter(1, "cube")]
    public class CubeImporter : ScriptedImporter
    {
        public override void OnImportAsset(AssetImportContext ctx)
        {
            var cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
            var position = new Vector3(0, 0, 0);
            cube.transform.position = position;
            ctx.AddObjectToAsset("main obj", cube);
            ctx.SetMainObject(cube);
        }
    }
}
```
