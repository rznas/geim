<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cubemap.SetPixels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| colors | The array of pixel colours to use. This is a 2D image flattened to a 1D array. |
| miplevel | The mipmap level to write `colors` to. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |
| face | The CubemapFace to write `colors` to. |

### Description

Sets the pixel colors of an entire mipmap level of a face.

This method sets pixel data for the texture in CPU memory. Texture.isReadable must be `true`, and you must call Apply after `SetPixels` to upload the changed pixels to the GPU.

Apply is an expensive operation because it copies all the pixels in the texture even if you've only changed some of the pixels, so change as many pixels as possible before you call it.

`colors` must contain the pixels row by row, starting at the bottom left of the face texture. The size of the array must be the width × height of the mipmap level.

A single call to `SetPixels` is usually faster than multiple calls to SetPixel, especially for large textures.

`SetPixels` might be slower than some other texture methods because it converts the Color struct into the format the texture uses. To set pixel data more quickly, use SetPixelData instead.

You can use `SetPixels` with the following texture formats:

- Alpha8
- ARGB32
- ARGB4444
- BGRA32
- R16
- R16_SIGNED
- R8
- R8_SIGNED
- RFloat
- RG16
- RG16_SIGNED
- RG32
- RG32_SIGNED
- RGB24
- RGB24_SIGNED
- RGB48
- RGB48_SIGNED
- RGB565
- RGB9e5Float
- RGBA32
- RGBA32_SIGNED
- RGBA4444
- RGBA64
- RGBA64_SIGNED
- RGBAFloat
- RGBAHalf
- RGFloat
- RGHalf
- RHalf

For all other formats, `SetPixels` fails. Unity throws an exception when `SetPixels` fails.

Additional resources: GetPixels, SetPixelData, Apply, mipmapCount.

```csharp
// copy a texture to the +X face of a cubemapusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Cubemap c;
    public Texture2D t;
    private Color[] CubeMapColors;    void Example()
    {
        CubeMapColors = t.GetPixels();
        c.SetPixels(CubeMapColors, CubemapFace.PositiveX);
        c.Apply();
    }
}
```
