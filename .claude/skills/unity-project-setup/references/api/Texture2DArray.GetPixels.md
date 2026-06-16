<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2DArray.GetPixels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| arrayElement | The array slice to read pixel data from. |
| miplevel | The mipmap level to get. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Returns

**Color[]** An array that contains the pixel colors.

### Description

Gets the pixel color data for a mipmap level of a slice as Color structs.

This method gets pixel data from the texture in CPU memory. Texture.isReadable must be `true`.

The array contains the pixels row by row, starting at the bottom left of the texture. The size of the array is the width × height of the mipmap level.

Each pixel is a Color struct. `GetPixels` might be slower than some other texture methods because it converts the format the texture uses into Color. `GetPixels` also needs to decompress compressed textures, and use memory to store the decompressed area. To get pixel data more quickly, use GetPixelData instead.

If `GetPixels` fails, Unity throws an exception. `GetPixels` might fail if the array contains too much data. Use GetPixelData instead for very large textures.

You can't use `GetPixel` with textures that use Crunch texture compression. Use GetPixels32 instead.

```csharp
using UnityEngine;public class Texture2DArrayExample : MonoBehaviour
{
    public Texture2DArray source;
    public Texture2DArray destination;    void Start()
    {
        // Get a copy of the color data from the source Texture2DArray, in high-precision float format.
        // Each element in the array represents the color data for an individual pixel.
        int sourceSlice = 0;
        int sourceMipLevel = 0;
        Color[] pixels = source.GetPixels(sourceSlice, sourceMipLevel);        // If required, manipulate the pixels before applying them to the destination Texture2DArray.
        // This example code reverses the array, which rotates the image 180 degrees.
        System.Array.Reverse(pixels, 0, pixels.Length);        // Set the pixels of the destination Texture2DArray.
        int destinationSlice = 0;
        int destinationMipLevel = 0;
        destination.SetPixels(pixels, destinationSlice, destinationMipLevel);        // Apply changes to the destination Texture2DArray, which uploads its data to the GPU.
        destination.Apply();
    }
}
```

Additional resources: GetPixels32, GetPixelData, SetPixels, Graphics.CopyTexture.
