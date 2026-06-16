<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetDefaultImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path for the asset. |

### Returns

**Type** Importer type.

### Description

Returns the Default Importer associated with the asset located at the supplied path. When no Importer override is set, then the default importer is used. Additional resources: AssetDatabase.GetImporterOverride, AssetDatabase.ClearImporterOverride.

```csharp
using System;
using UnityEngine;
using UnityEditor;
using UnityEditor.AssetImporters;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Available Importer Types for cube")]
    static void AvailableImporterTypeCube()
    {
        var path = "Assets/CompanionCube.fbx";
        AssetDatabase.GetDefaultImporter(path);
        // returns ModelImporter.
        AssetDatabase.GetImporterOverride(path);
        // returns null because no Override Importer is set.
        AssetDatabase.GetAvailableImporters(path);
        // returns [CubeImporter].
        AssetDatabase.SetImporterOverride<CubeImporter>(path);
        // sets CubeImporter as Override Importer.
        AssetDatabase.ClearImporterOverride(path);
        // removes the Override Importer.
        AssetDatabase.GetImporterOverride(path);
        // returns null because no Override Importer is set.
    }    //This is Example Importer for cube
    [ScriptedImporter(1, new []{"cube" }, new[] { "fbx" })]
    public class CubeImporter : ScriptedImporter
    {
        public override void OnImportAsset(AssetImportContext ctx)
        {
            var cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
            cube.transform.position = new Vector3(0, 0, 0);
            // 'cube' is a GameObject and will be automatically converted into a prefab
            ctx.AddObjectToAsset("main obj", cube);
            ctx.SetMainObject(cube);
        }
    }
}
```
