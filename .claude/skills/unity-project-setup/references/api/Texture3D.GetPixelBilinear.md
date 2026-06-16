<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture3D.GetPixelBilinear.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| u | The u coordinate of the pixel to get. |
| v | The v coordinate of the pixel to get. |
| w | The w coordinate of the pixel to get. |
| mipLevel | The mipmap level to read from. The range is `0` through the texture's Texture.mipmapCount. The default value is `0`. |

### Returns

**Color** The pixel color.

### Description

Gets the filtered pixel color at the normalized coordinates (`u`, `v`, `w`).

This method gets pixel data from the texture in CPU memory. Texture.isReadable must be `true`.

Unity uses bilinear filtering to return the pixel color.

The lower left corner is (0, 0, 0). If the pixel coordinate is outside the texture's dimensions, Unity clamps or repeats it, depending on the texture's TextureWrapMode.

You can't use `GetPixelBilinear` with textures that use Crunch texture compression. Use GetPixels32 instead.

Additional resources: GetPixel.
