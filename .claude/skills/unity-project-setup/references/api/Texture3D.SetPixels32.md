<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture3D.SetPixels32.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| colors | The array of pixel colours to use. This is a 3D texture flattened to a 1D array. |
| miplevel | The mipmap level to write `colors` to. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Description

Sets the pixel colors of an entire mipmap level.

This method sets pixel data for the texture in CPU memory. Texture.isReadable must be `true`, and you must call Apply after `SetPixels32` to upload the changed pixels to the GPU.

`colors` must contain the pixels slice by slice starting at the front of the texture. Each slice must contain the pixels row by row, starting at the bottom left of the texture. The size of the array must be the width × height × depth of the mipmap level.

A single call to `SetPixels32` is usually faster than multiple calls to SetPixel, especially for large textures.

`SetPixels32` might be slower than some other texture methods because it converts the Color32 struct into the format the texture uses. To set pixel data more quickly, use SetPixelData instead.

You can use `SetPixel32` with the following texture formats:

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

For all other formats, `SetPixels32` fails. Unity throws an exception when `SetPixels32` fails.

Additional resources: SetPixels, SetPixelData, GetPixels32, GetPixels, Apply, mipmapCount.
