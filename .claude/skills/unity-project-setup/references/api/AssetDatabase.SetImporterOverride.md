<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.SetImporterOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path for the asset. |

### Description

Sets a specific importer to use for the asset.

Multiple Importers may be registered to a single asset by using either the override extension list, or composite extensions.

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
        AssetDatabase.SetImporterOverride<CubeImporterOverride>("Assets/CompanionCube.cube");
        Debug.Log("New importer: " + AssetDatabase.GetImporterOverride("Assets/CompanionCube.cube"));        //This clears importer override and sets it to null
        AssetDatabase.ClearImporterOverride("Assets/CompanionCube.cube");
        // This asset does not have an Importer Override anymore. The Default Importer is used ( CubeImporter ).
        Assert.IsNull(AssetDatabase.GetImporterOverride("Assets/CompanionCube.cube"));
    }
}//This importer is the Default Importer for the .cube extension.
[ScriptedImporter(1, "cube")]
public class CubeImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        var cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
        var position = new Vector3(0, 0, 0);
        cube.transform.position = position;
    }
}//This importer is the Default Importer for the .composite.cube extension.
[ScriptedImporter(1, "composite.cube")]
public class CompositeCubeImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        var cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
        var position = new Vector3(1, 1, 1);
        cube.transform.position = position;
    }
}//This importer is an Override Importer for the .cube extension.
[ScriptedImporter(1, null,new []{ "cube" })]
public class CubeImporterOverride : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        var cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
        // 'cube' is a GameObject and will be automatically converted into a prefab
        ctx.AddObjectToAsset("main obj", cube);
        ctx.SetMainObject(cube);
    }
}
```
