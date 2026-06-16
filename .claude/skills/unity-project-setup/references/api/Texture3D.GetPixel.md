<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture3D.GetPixel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| x | The x coordinate of the pixel to get. The range is `0` through the (texture width - 1). |
| y | The y coordinate of the pixel to get. The range is `0` through the (texture height - 1). |
| z | The z coordinate of the pixel to get. The range is `0` through the (texture depth - 1). |
| mipLevel | The mipmap level to sample. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Returns

**Color** The pixel color.

### Description

Gets the pixel color at coordinates (`x`, `y`, `z`).

This method gets pixel data from the texture in CPU memory. Texture.isReadable must be `true`.

The lower left corner is (0, 0, 0). If the pixel coordinate is outside the texture's dimensions, Unity clamps or repeats it, depending on the texture's TextureWrapMode.

`GetPixel` might be slower than some other texture methods because it converts the format the texture uses into Color. `GetPixel` also needs to decompress compressed textures, and use memory to store the decompressed area. To get pixel data more quickly, use GetPixelData instead.

If you need to get a large block of pixels, it might be faster to use GetPixels32 or GetPixels.

You can't use `GetPixel` with textures that use Crunch texture compression.

Additional resources: GetPixels32, GetPixels, SetPixel, GetPixelBilinear.
