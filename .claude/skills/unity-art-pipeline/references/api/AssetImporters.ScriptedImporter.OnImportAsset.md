<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.ScriptedImporter.OnImportAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ctx | This argument contains all the contextual information needed to process the import event and is also used by the custom importer to store the resulting Unity Asset. |

### Description

This method must be overriden by the derived class and is called by the Asset pipeline to import files.

```csharp
using UnityEngine;
using UnityEditor.AssetImporters;
using System.IO;[ScriptedImporter(1, "cube")]
public class CubeImporter : ScriptedImporter
{
    public float m_Scale = 1;    public override void OnImportAsset(AssetImportContext ctx)
    {
        var cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
        var position = JsonUtility.FromJson<Vector3>(File.ReadAllText(ctx.assetPath));        cube.transform.position = position;
        cube.transform.localScale = new Vector3(m_Scale, m_Scale, m_Scale);        // 'cube' is a a GameObject and will be automatically converted into a Prefab
        // (Only the 'Main Asset' is elligible to become a Prefab.)
        ctx.AddObjectToAsset("main obj", cube);
        ctx.SetMainObject(cube);        var material = new Material(Shader.Find("Standard"));
        ctx.DependsOnCustomDependency("StandardShaderDependencyHash");        material.color = Color.red;        // Assets must be assigned a unique identifier string consistent across imports
        ctx.AddObjectToAsset("my Material", material);        // Assets that are not passed into the context as import outputs must be destroyed
        var tempMesh = new Mesh();
        DestroyImmediate(tempMesh);
    }
}
```

To use the Shader.Find() function in the above example, you need to write a custom dependency for the shader you want to find and regularly update it. This prevents the Shader.Find() function from bypassing other means of dependency checking. The below code is an example of how you might write a custom dependency for this purpose.

```csharp
using UnityEditor;
using UnityEngine;static class ShaderDependencyUpdater
{
    [InitializeOnLoadMethod]
    static void ShaderDependencyInit()
    {
        EditorApplication.update += ShaderDependencyUpdate;
    }
    static void ShaderDependencyUpdate()
    {
        var shader = Shader.Find("Standard");
        AssetDatabase.TryGetGUIDAndLocalFileIdentifier(shader, out var guid, out long id);
        var hash = new Hash128();
        hash.Append(guid);
        hash.Append(id);
        AssetDatabase.RegisterCustomDependency("StandardShaderDependencyHash", hash);
    }
}
```

Use a LazyLoadReference<T0> to declare a dependency on an Artifact (e.g., an AnimationClip). This ensures the dependency is successfully declared, even if the referenced Artifact has not yet been imported.

```csharp
using UnityEditor;
using UnityEditor.AssetImporters;
using UnityEngine;public class MyImporter : ScriptedImporter
{
    public LazyLoadReference<AnimationClip> sourceClip;
    public LazyLoadReference<GameObject> sourcePrefab;    public override void OnImportAsset(AssetImportContext ctx)
    {
        var clipPath = AssetDatabase.GetAssetPath(sourceClip.instanceID);
        ctx.DependsOnArtifact(clipPath);        var prefabPath = AssetDatabase.GetAssetPath(sourcePrefab.instanceID);
        ctx.DependsOnArtifact(prefabPath);        if (sourceClip.asset != null && sourcePrefab.asset != null)
        {
            // Do import stuff..
        }
    }
}
```
