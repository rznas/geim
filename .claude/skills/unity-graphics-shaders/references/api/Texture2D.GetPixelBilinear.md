<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.GetPixelBilinear.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| u | The normalized U coordinate to interpolate to. 0 is the left of the mipmap level and 1 is one pixel beyond the right. Values outside the 0,1 range will be handled according to the texture's wrap mode. |
| v | The normalized V coordinate to interpolate to. 0 is the bottom of the mipmap level and 1 is one pixel beyond the top. Values outside the 0,1 range will be handled according to the texture's wrap mode. |
| mipLevel | The mipmap level to read from. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Returns

**Color** The bilinearly interpolated color for the given UV coordinates and mipmap level.

### Description

Gets the filtered color at the normalized coordinates (`u`, `v`).

This method gets pixel data from the texture in CPU memory. Texture.isReadable must be `true`. You also can't use `GetPixelBilinear` with textures that use Crunch texture compression. Use GetPixels32 to decompress the data first instead.

In the normalized coordinates, the bottom left pixel of the input grid is located exactly at coordinate u=0, v=0 the top right pixel is located exactly at coordinate u=(width-1)/width v=(height-1)/height. In general pixel x,y in the integer image grid is placed at coordinate u=x/width, v=y/height. If the u,v arguments do not exactly map to an input pixel, the result will be bilinearly interpolated from the four surrounding pixels (following the rules for wrap mode below). **Note**: Unity places width-1 at u=1 in the normalized space (similarly height-1 is at v=1) so that textures with a TextureWrapMode of `Repeat` can smoothly interpolate between the last and first pixel in the grid. This approach avoids wrapping artefacts at the edge of repeating textures.

If pixels fall outside the mipmap level texture, Unity uses nearby pixels based on the TextureWrapMode of the texture:

- `Clamp`: Unity clamps pixels to the nearest valid pixel.
- `Repeat`: Unity uses a modulo operation on the coordinates. Coordinate x maps to pixel x % width, and coordinate y maps to pixel y % height.
- `Mirror`, or `MirrorOnce`: Not supported, Unity will behave like `Clamp`.

`GetPixelBilinear` runs on the CPU, and behaves identically on all platforms and graphics APIs. Bilinear filtering on a GPU might behave differently, for example pixels might be offset by half a pixel. To match this type of filtering, offset the input coordinates by half a pixel. For example:

```csharp
Color GetPixelGPULike(float u, float v)
{
return readableTexture.GetPixelBilinear(x - 0.5f / readableTexture.width, y - 0.5f / readableTexture.height);
}
```

To use pixel coordinates instead of normalized coordinates, divide x by the texture width and y by the texture height. For example:

```csharp
Color GetPixelPerfectBilinear(float x, float y)
{
    return readableTexture.GetPixelBilinear(x / readableTexture.width, y / readableTexture.height);
}
```

To use coordinates where 0, 0 is the top-left of the texture, for example to match coordinates used in an image editor, flip the y coordinate you input. For example:

```csharp
Color GetPixelPerfectBilinearPhotoshop(float x, float y)
{
    return readableTexture.GetPixelBilinear(x / readableTexture.width, ((readableTexture.height - 1) - y) / readableTexture.height);
}
```

Additional resources: GetPixel.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // "Warp" a texture by squashing its pixels to one side.
    // This involves sampling the image at non-integer pixel
    // positions to ensure a smooth effect.    // Source image.
    public Texture2D sourceTex;    // Amount of "warping".
    public float warpFactor = 1.0f;    Texture2D destTex;
    Color[] destPix;
    void Start()
    {
        // Set up a new texture with the same dimensions as the original.
        destTex = new Texture2D(sourceTex.width, sourceTex.height);
        destPix = new Color[destTex.width * destTex.height];        // For each pixel in the destination texture...
        for (var y = 0; y < destTex.height; y++)
        {
            for (var x = 0; x < destTex.width; x++)
            {
                // Calculate the fraction of the way across the image
                // that this pixel positon corresponds to.
                float xFrac = x * 1.0f / (destTex.width - 1);
                float yFrac = y * 1.0f / (destTex.height - 1);                // Take the fractions (0..1)and raise them to a power to apply
                // the distortion.
                float warpXFrac = Mathf.Pow(xFrac, warpFactor);
                float warpYFrac = Mathf.Pow(yFrac, warpFactor);                // Get the non-integer pixel positions using GetPixelBilinear.
                destPix[y * destTex.width + x] = sourceTex.GetPixelBilinear(warpXFrac, warpYFrac);
            }
        }        // Copy the pixel data to the destination texture and apply the change.
        destTex.SetPixels(destPix);
        destTex.Apply();        // Set our object's texture to the newly warped image.
        GetComponent<Renderer>().material.mainTexture = destTex;
    }
}
```

Additional resources: GetPixel.
