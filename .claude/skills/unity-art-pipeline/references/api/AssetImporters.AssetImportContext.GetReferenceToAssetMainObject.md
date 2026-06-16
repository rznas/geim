<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImportContext.GetReferenceToAssetMainObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The location of the asset to get the reference from. |

### Returns

**Object** Returns the main asset instance if it exists and is already imported, returns null otherwise.

### Description

Returns the main asset from the given path (if it exists) and automatically adds a dependency on its path if it is the main asset type.

Calling this method during an import will make the current imported asset re-import if: - An asset is added at the given path, - The type of the asset at the given path changes, - An existing asset at the given path is deleted or moved.

If the returned asset is used for more than referencing, like reading its content and using its values, AssetImportContext.DependsOnArtifact or AssetImportContext.DependsOnSourceAsset should be used instead.

For example, this method should be used to reference Textures added to or created during an import. Since we are only setting a reference to the texture from the Material, it is not necessary to re-import when the texture itself changes, only when it is added or removed from the project.

```csharp
using UnityEngine;
using UnityEditor.AssetImporters;[ScriptedImporter(1, "customMaterial")]
public class MaterialCreatorExample : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        var mat = new Material(Shader.Find("Standard"));
        var texturePath = $"{System.IO.Path.GetDirectoryName(ctx.assetPath)}/{System.IO.Path.GetFileNameWithoutExtension(ctx.assetPath)}_Diffuse.png";
        mat.mainTexture = ctx.GetReferenceToAssetMainObject(texturePath) as Texture2D;
        ctx.AddObjectToAsset("mat", mat);
    }
}
```
