<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamTexture.GetPixels32.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| colors | An optional array to write the pixel data to. |

### Returns

**Color32[]** An array that contains the pixel colors.

### Description

Gets the pixel color data for a mipmap level as Color32 structs.

This method gets pixel data from the texture in CPU memory. Texture.isReadable must be `true`.

The array contains the pixels row by row, starting at the bottom left of the texture. The size of the array is the width × height of the texture. 

Each pixel is a Color32 struct.

A single call to `GetPixels32` is usually faster than multiple calls to GetPixel, especially for large textures.

If `GetPixels32` fails, Unity throws an exception. `GetPixels32` might fail if the array contains too much data.

You can optionally pass in an array of Color32 structs to avoid allocating new memory each frame. This can improve performance if you are continuously reading data from the camera. The array must be initialized to the dimensions `width * height` of the texture. If you don't pass an array, Unity will allocate one and return it.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    WebCamTexture webcamTexture;
    Color32[] data;    void Start()
    {
        // Start web cam feed
        webcamTexture = new WebCamTexture();
        webcamTexture.Play();
        data = new Color32[webcamTexture.width * webcamTexture.height];
    }    void Update()
    {
        webcamTexture.GetPixels32(data);
        // Do processing of data here.
    }
}
```
