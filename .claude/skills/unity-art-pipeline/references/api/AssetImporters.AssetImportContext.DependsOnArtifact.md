<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImportContext.DependsOnArtifact.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The path of the Asset whose artifact should be the dependency. Note: Although the dependency is the artifact (import result) which is stored in the library folder, this parameter is the path to the Asset in the Assets folder, and *not* a path to the artifact in the Library folder. |
| guid | The guid of the artifact dependency. |
| key | The artifact key of the artifact dependency. |

### Description

Setup artifact dependency to an asset.

An artifact dependency is a dependency where an Asset depends on the import result (known as an artifact) of another Asset. If you change an Asset that has been marked as a dependency, all Assets which depend on it will also get reimported (after the dependency has been imported).

If you specify an asset as a dependency that doesn't exist or hasn't yet been imported, the dependency is registered as an un-imported asset. When the asset is later imported, Unity reimports all assets which depend on it. When you set up an artifact dependency, use GUIDs rather than paths where possible because the GUID remains consistent even when the asset is moved or renamed.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.AssetImporters;class TextureInfo : ScriptableObject
{
    public int height;
}[ScriptedImporter(1, "cube")]
public class CubeWithTextureImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        var assetDependency = "Assets/MyTexture.png";        ctx.DependsOnArtifact(assetDependency);        var texture = AssetDatabase.LoadAssetAtPath<Texture>(assetDependency);        if (texture != null)
        {
            var textureInfo = ScriptableObject.CreateInstance<TextureInfo>();
            textureInfo.height = texture.height;
            ctx.AddObjectToAsset("TextureInfo", textureInfo);
        }
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
