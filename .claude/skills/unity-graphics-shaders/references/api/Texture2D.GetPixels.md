<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.GetPixels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| miplevel | The mipmap level to get. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Returns

**Color[]** An array that contains the pixel colors.

### Description

Gets the pixel color data for a mipmap level as Color structs.

This method gets pixel data from the texture in CPU memory. Texture.isReadable must be `true`.

The array contains the pixels row by row, starting at the bottom left of the texture. The size of the array is the width × height of the mipmap level.

Each pixel is a Color struct. `GetPixels` might be slower than some other texture methods because it converts the format the texture uses into Color. `GetPixels` also needs to decompress compressed textures, and use memory to store the decompressed area. To get pixel data more quickly, use GetPixelData instead.

A single call to `GetPixels` is usually faster than multiple calls to GetPixel, especially for large textures.

If `GetPixels` fails, Unity throws an exception. `GetPixels` might fail if the array contains too much data. Use GetPixelData or GetRawTextureData instead for very large textures.

You can't use `GetPixel` with textures that use Crunch texture compression. Use GetPixels32 instead.

```csharp
using UnityEngine;public class Texture2DExample : MonoBehaviour
{
    public Texture2D source;
    public Texture2D destination;    void Start()
    {
        // Get a copy of the color data from the source Texture2D, in high-precision float format.
        // Each element in the array represents the color data for an individual pixel.
        int sourceMipLevel = 0;
        Color[] pixels = source.GetPixels(sourceMipLevel);        // If required, manipulate the pixels before applying them to the destination Texture2D.
        // This example code reverses the array, which rotates the image 180 degrees.
        System.Array.Reverse(pixels, 0, pixels.Length);        // Set the pixels of the destination Texture2D.
        int destinationMipLevel = 0;
        destination.SetPixels(pixels, destinationMipLevel);        // Apply changes to the destination Texture2D, which uploads its data to the GPU.
        destination.Apply();
    }
}
```

Additional resources: SetPixels, mipmapCount, GetPixelData, GetPixels32.

### Parameters

| Parameter | Description |
| --- | --- |
| x | The starting x position of the section to fetch. |
| y | The starting y position of the section to fetch. |
| blockWidth | The width of the section to fetch. |
| blockHeight | The height of the section to fetch. |
| miplevel | The mipmap level to read from. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Returns

**Color[]** An array that contains the pixel colors.

### Description

Gets the pixel color data for part of a mipmap level as Color structs.

This version of `GetPixels` returns part of a mipmap level instead of the whole mipmap level.

```csharp
// Get a rectangular area of a texture and place it into
// a new texture the size of the rectangle.
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Source texture and the rectangular area we want to extract.
    public Texture2D sourceTex;
    public Rect sourceRect;    void Start()
    {
        int x = Mathf.FloorToInt(sourceRect.x);
        int y = Mathf.FloorToInt(sourceRect.y);
        int width = Mathf.FloorToInt(sourceRect.width);
        int height = Mathf.FloorToInt(sourceRect.height);        Color[] pix = sourceTex.GetPixels(x, y, width, height);
        Texture2D destTex = new Texture2D(width, height);
        destTex.SetPixels(pix);
        destTex.Apply();        // Set the current object's texture to show the
        // extracted rectangle.
        GetComponent<Renderer>().material.mainTexture = destTex;
    }
}
```
