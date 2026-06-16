<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture3D.GetPixels32.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| miplevel | The mipmap level to get. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Returns

**Color32[]** An array that contains the pixel colors.

### Description

Gets the pixel color data for a mipmap level as Color32 structs.

This method gets pixel data from the texture in CPU memory. Texture.isReadable must be `true`.

The array contains the pixels slice by slice starting at the front of the texture. Each slice contains the pixels row by row, starting at the bottom left of the texture. The size of the array is the width × height × depth of the mipmap level.

Each pixel is a Color32 struct. `GetPixels32` might be slower than some other texture methods because it converts the format the texture uses into Color32. To get pixel data more quickly, use GetPixelData instead.

A single call to `GetPixels32` is usually faster than multiple calls to GetPixel, especially for large textures.

If `GetPixels32` fails, Unity throws an exception. `GetPixels32` might fail if the array contains too much data. Use GetPixelData instead for very large textures.

```csharp
using UnityEngine;public class Texture3DExample : MonoBehaviour
{
    public Texture3D source;
    public Texture3D destination;    void Start()
    {
        // Get a copy of the color data from the source Texture3D, in lower-precision int format.
        // Each element in the array represents the color data for an individual pixel.
        int sourceMipLevel = 0;
        Color32[] pixels = source.GetPixels32(sourceMipLevel);        // If required, manipulate the pixels before applying them to the destination texture.
        // This example code reverses the array, which rotates the image 180 degrees.
        System.Array.Reverse(pixels, 0, pixels.Length);        // Set the pixels of the destination Texture3D.
        int destinationMipLevel = 0;
        destination.SetPixels32(pixels, destinationMipLevel);        // Apply changes to the destination Texture3D, which uploads its data to the GPU.
        destination.Apply();
    }
}
```

Additional resources: SetPixel, SetPixels, SetPixels32, GetPixel, GetPixelBilinear, GetPixels, GetPixelData, Apply functions.
