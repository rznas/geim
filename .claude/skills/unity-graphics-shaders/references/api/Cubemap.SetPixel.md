<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cubemap.SetPixel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| x | The x coordinate of the pixel to set. The range is `0` through (texture width - 1). |
| y | The y coordinate of the pixel to set. The range is `0` through (texture height - 1). |
| color | The color to set. |
| mip | The mipmap level to write to. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |
| face | The CubemapFace to write to. |

### Description

Sets the pixel color at coordinates (`x`,`y`).

This method sets pixel data for the texture in CPU memory. Texture.isReadable must be `true`, and you must call Apply after `SetPixel` to upload the changed pixels to the GPU.

Apply is an expensive operation because it copies all the pixels in the texture even if you've only changed some of the pixels, so change as many pixels as possible before you call it.

`SetPixel` might be slower than some other texture methods because it converts the Color struct into the format the texture uses. To set pixel data more quickly, use SetPixelData instead.

The lower left corner of a face is (0, 0). If the pixel coordinate is outside the texture's dimensions, Unity clamps or repeats it, depending on the texture's TextureWrapMode.

If you need to get a large block of pixels, it might be faster to use SetPixels.

You can use `SetPixel` with the following texture formats:

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

For all other formats, Unity ignores `SetPixel`.

Additional resources: SetPixels, SetPixelData, GetPixel, Apply.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public Cubemap cubeMap;    void Start()
    {
        // Set the pixel at (0,0) of the +X face red.
        cubeMap.SetPixel(CubemapFace.PositiveX, 0, 0, Color.red);
        cubeMap.Apply(); // Apply the stuff done to the Cubemap.
    }
}
```
