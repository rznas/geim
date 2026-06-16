<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | Texture width in pixels. |
| height | Texture height in pixels. |
| depth | Number of bits in depth buffer (0, 16, 24 or 32). Note that only 24 and 32 bit depth have stencil buffer support. |
| format | Texture color format. |
| colorFormat | The color format for the RenderTexture. |
| depthStencilFormat | The depth stencil format for the RenderTexture. |
| mipCount | Amount of mips to allocate for the RenderTexture. |
| readWrite | How color space conversions are applied on texture read/write. |
| desc | Create the RenderTexture with the settings in the RenderTextureDescriptor. |
| textureToCopy | Copy the settings from another RenderTexture. |

### Description

Creates a new RenderTexture object.

The render texture is created with `width` by `height` size, with a depth buffer of `depth` bits (depth can be 0, 16, 24 or 32), and in `format` format and with sRGB read / write on or off.

Note that constructing a RenderTexture object does not create the hardware representation immediately. The actual render texture is created upon first use or when Create is called manually. So after constructing the render texture, it is possible to set additional variables, like format, dimension and so on.

Also note that your graphics device capabilities determine the maximum size of a RenderTexture. To determine the maximum size, use SystemInfo.maxTextureSize for 2D and cubemap RenderTextures, SystemInfo.maxTexture3DSize for 3D RenderTextures, and SystemInfo.maxTextureSize and SystemInfo.maxTextureArraySlices for 2D array RenderTextures.

When the requested size exceeds the maximum size, Unity's behavior varies. If the RenderTexture is not a 3D texture, and the requested size is a power of two, Unity automatically scales down the requested size by a factor of 2 until it is below the maximum, and then creates the RenderTexture at that size. Otherwise, Unity fails to create the RenderTexture, and throws an error.

Additional resources: format, GetTemporary.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public RenderTexture rt;    void  Start()
    {
        rt = new RenderTexture(256, 256, 16, RenderTextureFormat.ARGB32);
    }
}
```
