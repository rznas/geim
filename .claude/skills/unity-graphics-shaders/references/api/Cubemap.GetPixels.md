<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cubemap.GetPixels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| face | The CubemapFace to read from. |
| miplevel | The mipmap level to get. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Returns

**Color[]** An array that contains the pixel colors.

### Description

Gets the pixel color data for a mipmap level of a face as Color structs.

This method gets pixel data from the texture in CPU memory. Texture.isReadable must be `true`.

The array contains the pixels row by row, starting at the bottom left of the face texture. The size of the array is the width × height of the mipmap level.

Each pixel is a Color struct. `GetPixels` might be slower than some other texture methods because it converts the format the texture uses into Color. `GetPixels` also needs to decompress compressed textures, and use memory to store the decompressed area. To get pixel data more quickly, use GetPixelData instead.

A single call to `GetPixels` is usually faster than multiple calls to GetPixel, especially for large textures.

If `GetPixels` fails, Unity throws an exception. `GetPixels` might fail if the array contains too much data. Use GetPixelData instead for very large textures.

You can't use `GetPixel` with textures that use Crunch texture compression.

```csharp
using UnityEngine;public class CubemapExample : MonoBehaviour
{
    public Cubemap source;
    public Cubemap destination;    void Start()
    {
        // Get a copy of the color data from the source Cubemap, in high-precision float format.
        // Each element in the array represents the color data for an individual pixel.
        CubemapFace sourceFace = CubemapFace.PositiveX;
        int sourceMipLevel = 0;
        Color[] pixels = source.GetPixels(sourceFace, sourceMipLevel);        // If required, manipulate the pixels before applying them to the destination texture.
        // This example code reverses the array, which rotates the image 180 degrees.
        System.Array.Reverse(pixels, 0, pixels.Length);        // Set the pixels of the destination Cubemap.
        CubemapFace destinationFace = CubemapFace.PositiveX;
        int destinationMipLevel = 0;
        destination.SetPixels(pixels, destinationFace, destinationMipLevel);        // Apply changes to the destination Cubemap, which uploads its data to the GPU.
        destination.Apply();
    }
}
```

Additional resources: SetPixels, GetPixelData, Texture.mipmapCount.
