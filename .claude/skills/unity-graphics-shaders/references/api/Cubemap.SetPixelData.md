<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cubemap.SetPixelData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | The array of data to use. |
| mipLevel | The mipmap level to write to. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |
| face | The CubemapFace to write to. |
| sourceDataStartIndex | The index in the source array to start copying from. The default value is `0`. |

### Description

Sets the raw data of an entire mipmap level of a face directly in CPU memory.

This method sets pixel data for the texture in CPU memory. Texture.isReadable must be `true`, and you must call Apply after `SetPixelData` to upload the changed pixels to the GPU.

`SetPixelData` is useful if you want to load compressed or other non-color texture format data into a texture.

The size of the `data` array must be the width × height of the mipmap level, and the data layout must match the texture format, otherwise `SetPixelData` fails. You can use `byte` for `T` if you don't want to define a custom struct to match the texture format.

Unity throws an exception when `SetPixelData` fails.

Additional resources: SetPixels, GetPixelData, Apply.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    public void Start()
    {
        Cubemap cubemap = new Cubemap(2, TextureFormat.RGB24, true);        var byteArray = new byte[] {255, 0, 0,
                                    0, 255, 0,
                                    0, 0, 255,
                                    255, 235, 4,
                                    255, 0, 255,
                                    255, 255, 255,
                                    0, 0, 0,
                                    0, 255, 255,
                                    255, 0, 255};        cubemap.SetPixelData(byteArray, 0, CubemapFace.PositiveX);
        cubemap.SetPixelData(byteArray, 1, CubemapFace.PositiveX,  12);        cubemap.SetPixelData(byteArray, 0, CubemapFace.NegativeX, 15);
        cubemap.SetPixelData(byteArray, 1, CubemapFace.NegativeX, 12);        cubemap.SetPixelData(byteArray, 0, CubemapFace.PositiveY);
        cubemap.SetPixelData(byteArray, 1, CubemapFace.PositiveY,  12);        cubemap.SetPixelData(byteArray, 0, CubemapFace.NegativeY, 15);
        cubemap.SetPixelData(byteArray, 1, CubemapFace.NegativeY, 12);        cubemap.SetPixelData(byteArray, 0, CubemapFace.PositiveZ);
        cubemap.SetPixelData(byteArray, 1, CubemapFace.PositiveZ,  12);        cubemap.SetPixelData(byteArray, 0, CubemapFace.NegativeZ, 15);
        cubemap.SetPixelData(byteArray, 1, CubemapFace.NegativeZ, 12);        cubemap.Apply(updateMipmaps: false);
    }
}
```
