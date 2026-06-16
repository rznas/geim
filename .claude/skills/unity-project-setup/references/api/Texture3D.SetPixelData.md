<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture3D.SetPixelData.html
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

The size of the `data` array must be the width × height × depth of the mipmap level, and the data layout must match the texture format, otherwise `SetPixelData` fails. You can use `byte` for `T` if you don't want to define a custom struct to match the texture format.

Unity throws an exception when `SetPixelData` fails.

Additional resources: SetPixels, GetPixelData, Apply.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    public Texture3D texture;
    public void Start()
    {
        texture = new Texture3D(2, 2, 2, TextureFormat.RGB24, true);
        var data = new byte[]
        {
            255, 0, 0, // red
            0, 255, 0, // green
            0, 0, 255, // blue
            255, 235, 4, // yellow
            128, 0, 0, // dark red
            0, 128, 0, // dark green
            0, 0, 128, // dark blue
            128, 117, 4, // dark yellow
        };
        texture.SetPixelData(data, 0);
        texture.filterMode = FilterMode.Point;
        texture.Apply(updateMipmaps: false);
    }
}
```
