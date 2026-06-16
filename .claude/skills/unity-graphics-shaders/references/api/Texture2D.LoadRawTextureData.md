<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.LoadRawTextureData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | The array of data to use. |
| size | The size of the data in bytes. |

### Description

Sets the raw data of an entire texture in CPU memory.

This method sets pixel data for the texture in CPU memory. Texture.isReadable must be `true`, and you must call Apply after `LoadRawTextureData` to upload the changed pixels to the GPU.

You can also use the following to write to a texture:

- Texture2D.SetPixelData, which you can use to set a mipmap level instead of the entire texture.
- GetRawTextureData, which returns a `NativeArray` you can write to, and can be faster because it avoids copying memory.

The size of the `data` array must fill the entire texture according to its width, height and mipmapCount, and the data layout must match the texture format. Otherwise `LoadRawTextureData` fails.

For example, if the texture is 16 × 8 pixels and RGBA32 format with no mipmaps, the array must be a size of 512 bytes (16 × 8 × 4 bytes). You can use the experimental GraphicsFormatUtility.ComputeMipmapSize API to calculate the size of a mipmap level.

The array must start with mipmap level 0.

Additional resources: SetPixels, SetPixels32, SetPixelData, Apply, GetRawTextureData, ImageConversion.LoadImage.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    public void Start()
    {
        // Create a 16 x 16 texture with PVRTC RGBA4 format and fill it with raw PVRTC bytes.
        Texture2D tex = new Texture2D(16, 16, TextureFormat.PVRTC_RGBA4, false);        // Raw PVRTC4 data for a 16 x 16 texture.
        // This format is four bits per pixel, so the data should be 128 (16 x 16 / 2) bytes in size.
        // The texture encoded here is mostly green with some angular blue and red lines.
        byte[] pvrtcBytes = new byte[]
        {
            0x30, 0x32, 0x32, 0x32, 0xe7, 0x30, 0xaa, 0x7f, 0x32, 0x32, 0x32, 0x32, 0xf9, 0x40, 0xbc, 0x7f,
            0x03, 0x03, 0x03, 0x03, 0xf6, 0x30, 0x02, 0x05, 0x03, 0x03, 0x03, 0x03, 0xf4, 0x30, 0x03, 0x06,
            0x32, 0x32, 0x32, 0x32, 0xf7, 0x40, 0xaa, 0x7f, 0x32, 0xf2, 0x02, 0xa8, 0xe7, 0x30, 0xff, 0xff,
            0x03, 0x03, 0x03, 0xff, 0xe6, 0x40, 0x00, 0x0f, 0x00, 0xff, 0x00, 0xaa, 0xe9, 0x40, 0x9f, 0xff,
            0x5b, 0x03, 0x03, 0x03, 0xca, 0x6a, 0x0f, 0x30, 0x03, 0x03, 0x03, 0xff, 0xca, 0x68, 0x0f, 0x30,
            0xaa, 0x94, 0x90, 0x40, 0xba, 0x5b, 0xaf, 0x68, 0x40, 0x00, 0x00, 0xff, 0xca, 0x58, 0x0f, 0x20,
            0x00, 0x00, 0x00, 0xff, 0xe6, 0x40, 0x01, 0x2c, 0x00, 0xff, 0x00, 0xaa, 0xdb, 0x41, 0xff, 0xff,
            0x00, 0x00, 0x00, 0xff, 0xe8, 0x40, 0x01, 0x1c, 0x00, 0xff, 0x00, 0xaa, 0xbb, 0x40, 0xff, 0xff,
        };        // Load data into the texture and upload it to the GPU.
        tex.LoadRawTextureData(pvrtcBytes);
        tex.Apply();        // Assign the texture to this GameObject's material.
        GetComponent<Renderer>().material.mainTexture = tex;
    }
}
```
