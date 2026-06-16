<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GetImporterOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path for the asset. |

### Returns

**Type** Importer type.

### Description

Returns the type of the override importer.

Returns null if there isn't one.

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
}//This is Example Importer
[ScriptedImporter(1, "cube")]
public class CubeImporter : ScriptedImporter
{
    public float m_Scale = 1;
    public override void OnImportAsset(AssetImportContext ctx)
    {
        var cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
        var position = new Vector3(0, 0, 0);
        cube.transform.position = position;
        cube.transform.localScale = new Vector3(m_Scale, m_Scale, m_Scale);
        // 'cube' is a GameObject and will be automatically converted into a prefab
        ctx.AddObjectToAsset("main obj", cube);
        ctx.SetMainObject(cube);
        var material = new Material(Shader.Find("Standard"));
        material.color = Color.red;
        ctx.AddObjectToAsset("my Material", material);
        var tempMesh = new Mesh();
    }
}
```
