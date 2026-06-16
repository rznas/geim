<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D-mipmapLimitGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The name of the texture mipmap limit group that this texture is associated with. (Read Only)

If this texture has a mipmap limit group assignment, this texture respects the TextureMipmapLimitSettings of that group. If this texture does not have a group assignment, or the indicated group does not exist, this texture takes the QualitySettings.globalTextureMipmapLimit instead. If you construct or import this texture, assign it to a mipmap limit group that does not yet exist, then create that mipmap limit group, this texture respects the TextureMipmapLimitSettings of that new group.

Set this property in the constructor or in the texture importer, because you cannot set this property after creating the texture. If the texture has no mipmaps, this property has no effect.

This code example demonstrates how to set this property in both the Texture2D constructor and AssetPostprocessor.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;
#if UNITY_EDITOR
using UnityEditor;
#endifpublic class ExampleScript : MonoBehaviour
{
    void Start()
    {
        const int size = 32;
        Texture2D scriptTexture = new Texture2D(size, size, GraphicsFormat.R8G8B8A8_SRGB, Texture.GenerateAllMips, "MyGroup", TextureCreationFlags.MipChain);
        Debug.Log($"mipmapLimitGroup has been set to '{scriptTexture.mipmapLimitGroup}' on the script texture!");
    }
}#if UNITY_EDITOR
public class ExampleImporter : AssetPostprocessor
{
    void OnPreprocessTexture()
    {
        if (assetPath.Contains("_MyGroup"))
        {
            TextureImporter textureImporter = (TextureImporter)assetImporter;
            textureImporter.mipmapLimitGroupName = "MyGroup";
        }
    }
}
#endif
```

Additional resources: TextureMipmapLimitGroups, TextureImporter.mipmapLimitGroupName.
