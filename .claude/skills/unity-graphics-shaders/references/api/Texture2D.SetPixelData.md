<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.SetPixelData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | The array of data to use. |
| mipLevel | The mipmap level to write to. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |
| sourceDataStartIndex | The index in the source array to start copying from. The default value is `0`. |

### Description

Sets the raw data of an entire mipmap level directly in CPU memory.

This method sets pixel data for the texture in CPU memory. Texture.isReadable must be `true`, and you must call Apply after `SetPixelData` to upload the changed pixels to the GPU.

`SetPixelData` is useful if you want to load compressed or other non-color texture format data into a texture.

The size of the `data` array must be the width × height of the mipmap level, and the data layout must match the texture format, otherwise `SetPixelData` fails. You can use `byte` for `T` if you don't want to define a custom struct to match the texture format.

Unity throws an exception when `SetPixelData` fails.

Additional resources: SetPixels, LoadRawTextureData, GetPixelData, Apply.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    public void Start()
    {
        var tex = new Texture2D(2, 2, TextureFormat.RGB24, true);
        var data = new byte[]
        {
            // mipmap level 0: 2x2 size
            255, 0, 0, // red
            0, 255, 0, // green
            0, 0, 255, // blue
            255, 235, 4, // yellow
            // mipmap level 1: 1x1 size
            0, 255, 255 // cyan
        };
        tex.SetPixelData(data, 0, 0); // mipmap level 0
        tex.SetPixelData(data, 1, 12); // mipmap level 1
        tex.filterMode = FilterMode.Point;
        tex.Apply(updateMipmaps: false);        GetComponent<Renderer>().material.mainTexture = tex;
    }
}
```
