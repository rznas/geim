<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D-activeMipmapLimit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of high resolution mipmap levels from the texture that Unity doesn't upload to the GPU. (Read Only)

Unity takes a texture's mipmap limit settings into account to determine its active mipmap limit that affects how many texture mipmap levels are uploaded to the GPU. This property provides the active number of texture mipmap levels that Unity didn't upload to the GPU. This number is relative to the number of texture mipmap levels included in the build.

Unity ensures that a certain platform-dependent number of mipmap levels are always uploaded regardless of the texture's mipmap limit. `activeMipmapLimit` can therefore be smaller than expected in certain cases.

When PlayerSettings.mipStripping is enabled, which strips mipmap levels from textures, `activeMipmapLimit` returns a limit that accounts for the number of mipmap levels stripped. For example, a texture with 3 stripped mipmap levels and an applicable QualitySettings.globalTextureMipmapLimit value of 3 has a `activeMipmapLimit` value of 0. This value is because the number of mipmap levels that Unity uploads to the GPU is the same as the number of mipmap levels included in the build.

`activeMipmapLimit` also reflects any downscale fallbacks applied by EditorUserBuildSettings.androidETC2Fallback or AndroidETC2FallbackOverride.

The following code example demonstrates how you can use `activeMipmapLimit` to perform a Graphics.CopyTexture operation on the GPU to copy the highest resolution mipmap level of a texture that uses mipmap limits to a new texture that does not use mipmap limits.

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Experimental.Rendering;public class Example : MonoBehaviour
{
    [SerializeField] Texture2D m_SourceTexture;    public void ExecuteCopyTexture()
    {
        if ((SystemInfo.copyTextureSupport & CopyTextureSupport.Basic) == 0)
        {
            Debug.LogError("Cannot perform CopyTexture, there is no support on this platform.");
            return;
        }        if (!SystemInfo.IsFormatSupported(m_SourceTexture.graphicsFormat, GraphicsFormatUsage.Sample))
        {
            Debug.LogError("Cannot perform CopyTexture, the source texture's GraphicsFormat is not supported on this platform.");
            return;
        }        // The width and height of the texture in the build need to be halved for each mipmap level that wasn't uploaded to the GPU
        int width = m_SourceTexture.width >> m_SourceTexture.activeMipmapLimit;
        int height = m_SourceTexture.height >> m_SourceTexture.activeMipmapLimit;        // No mipmap limit applies because the texture doesn't have mipmaps.
        Texture2D destinationTexture = new Texture2D(width, height, m_SourceTexture.format, false);        // GPU copy of the mipmap level 0 to the mipmap level 0 of the destination texture.
        // The mipmap level 0 on the GPU is smaller than the mipmap level 0 of the texture in the build when m_SourceTexture.activeMipmapLimit is greater than 0.
        Graphics.CopyTexture(m_SourceTexture, 0, 0, 0, 0, m_SourceTexture.width, m_SourceTexture.height, destinationTexture, 0, 0, 0, 0);
    }
}
```

Additional resources: QualitySettings.globalTextureMipmapLimit, mipmapLimitGroup, ignoreMipmapLimit.
