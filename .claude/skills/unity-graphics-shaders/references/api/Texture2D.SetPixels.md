<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.SetPixels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| colors | The array of pixel colours to use. This is a 2D image flattened to a 1D array. |
| miplevel | The mipmap level to write `colors` to. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Description

Sets the pixel colors of an entire mipmap level.

This method sets pixel data for the texture in CPU memory. Texture.isReadable must be `true`, and you must call Apply after `SetPixels` to upload the changed pixels to the GPU.

Apply is an expensive operation because it copies all the pixels in the texture even if you've only changed some of the pixels, so change as many pixels as possible before you call it.

`colors` must contain the pixels row by row, starting at the bottom left of the texture. The size of the array must be the width × height of the mipmap level.

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

Additional resources: GetPixels, SetPixels32, SetPixelData, Apply, GetRawTextureData, LoadRawTextureData, mipmapCount.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Renderer rend = GetComponent<Renderer>();        // Duplicate the original texture and assign to the material
        Texture2D texture = Instantiate(rend.material.mainTexture) as Texture2D;
        rend.material.mainTexture = texture;        // Create the colors to use
        Color[] colors = new Color[3];
        colors[0] = Color.red;
        colors[1] = Color.green;
        colors[2] = Color.blue;
        int mipCount = Mathf.Min(3, texture.mipmapCount);        // For each mipmap level, use GetPixels to fetch an array of pixel data, and use SetPixels to fill the mipmap level with one color.
        for (int mip = 0; mip < mipCount; ++mip)
        {
            Color[] cols = texture.GetPixels(mip);
            for (int i = 0; i < cols.Length; ++i)
            {
                cols[i] = Color.Lerp(cols[i], colors[mip], 0.33f);
            }
            texture.SetPixels(cols, mip);
        }
        // Copy the changes to the GPU. and don't recalculate mipmap levels.
        texture.Apply(false);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| x | The x coordinate to place the block of pixels at. The range is `0` through (texture width - 1). |
| y | The y coordinate to place the block of pixels at. The range is `0` through (texture height - 1). |
| blockWidth | The width of the block of pixels to set. |
| blockHeight | The height of the block of pixels to set. |
| colors | The array of pixel colours to use. This is a 2D image flattened to a 1D array. Must be `blockWidth` x `blockHeight` in length. |
| miplevel | The mipmap level to write `colors` to. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Description

Sets the pixel colors of part of a mipmap level.

This version of `SetPixels` sets part of a mipmap level instead of the whole mipmap level.
