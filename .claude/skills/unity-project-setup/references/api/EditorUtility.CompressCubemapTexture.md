<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.CompressCubemapTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Compress a cubemap texture.

Use this method to explicitly compress a cubemap texture into the specified format.

Unity does not support the compression of textures into signed EAC formats. Additionally, only the following formats are supported if the texture to compress uses non-power of two (NPOT) dimensions and has a mipmap:

- Crunch formats
- BC4
- BC5
- ASTC formats

The texture is left unchanged if Unity is unable to compress it.

```csharp
using UnityEngine;
using UnityEditor;public class CompressCubemapTextureExample : AssetPostprocessor
{
    // Automatically Compress all imported cube map textures to the project to RGB24
    void OnPostprocessTexture(Cubemap t)
    {
        EditorUtility.CompressCubemapTexture(t, TextureFormat.RGB24, TextureCompressionQuality.Normal);
    }
}
```
