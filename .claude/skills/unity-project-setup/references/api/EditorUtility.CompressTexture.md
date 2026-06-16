<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.CompressTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Compress a texture.

Use this function to explicitly compress a texture into specified format.

Unity does not support the compression of textures into signed EAC formats. Additionally, only the following formats are supported if the texture to compress uses non-power of two (NPOT) dimensions and has a mipmap:

- Crunch formats
- BC4
- BC5
- ASTC formats

The texture is left unchanged if Unity is unable to compress it.

If you want to do texture compression in-game, use Texture2D.Compress function, which will use faster but lower quality DXT1/DXT5 (also known as BC1/BC3) or ETC/EAC compression.

```csharp
using UnityEngine;
using UnityEditor;public class CompressTextureExample : AssetPostprocessor
{
    // Automatically Compress all imported textures to the project to RGB24
    void OnPostprocessTexture(Texture2D t)
    {
        EditorUtility.CompressTexture(t, TextureFormat.RGB24, TextureCompressionQuality.Normal);
    }
}
```
