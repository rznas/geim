<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CubemapArray.GetPixels32.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| face | The CubemapFace to read pixel data from. |
| arrayElement | The array slice to read pixel data from. |
| miplevel | The mipmap level to get. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Returns

**Color32[]** An array that contains the pixel colors.

### Description

Gets the pixel color data for a mipmap level of a face of a slice as Color32 structs.

This method gets pixel data from the texture in CPU memory. Texture.isReadable must be `true`.

The array contains the pixels row by row, starting at the bottom left of the face texture. The size of the array is the width × height of the mipmap level.

Each pixel is a Color32 struct. `GetPixels32` might be slower than some other texture methods because it converts the format the texture uses into Color32. To get pixel data more quickly, use GetPixelData instead.

If `GetPixels32` fails, Unity throws an exception. `GetPixels32` might fail if the array contains too much data. Use GetPixelData instead for very large textures.

```csharp
using UnityEngine;public class CubemapArrayExample : MonoBehaviour
{
    public CubemapArray source;
    public CubemapArray destination;    void Start()
    {
        // Get a copy of the color data from the source CubemapArray, in lower-precision int format.
        // Each element in the array represents the color data for an individual pixel.
        CubemapFace sourceFace = CubemapFace.PositiveX;
        int sourceSlice = 0;
        int sourceMipLevel = 0;
        Color32[] pixels = source.GetPixels32(sourceFace, sourceSlice, sourceMipLevel);        // If required, manipulate the pixels before applying them to the destination texture.
        // This example code reverses the array, which rotates the image 180 degrees.
        System.Array.Reverse(pixels, 0, pixels.Length);        // Set the pixels of the destination CubemapArray.
        CubemapFace destinationFace = CubemapFace.PositiveX;
        int destinationSlice = 0;
        int destinationMipLevel = 0;
        destination.SetPixels32(pixels, destinationFace, destinationSlice, destinationMipLevel);        // Apply changes to the destination CubemapArray, which uploads its data to the GPU.
        destination.Apply();
    }
}
```

Additional resources: GetPixels, GetPixelData, SetPixels32, Graphics.CopyTexture.
