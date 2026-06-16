<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamTexture.GetPixel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| x | The x coordinate of the pixel to get. The range is `0` through the (texture width - 1). |
| y | The y coordinate of the pixel to get. The range is `0` through the (texture height - 1). |

### Returns

**Color** The pixel color.

### Description

Gets the pixel color at coordinates (`x`, `y`).

This method gets pixel data from the texture in CPU memory. Texture.isReadable must be `true`.

The lower left corner is (0, 0). If the pixel coordinate is outside the texture's dimensions, Unity clamps or repeats it, depending on the texture's TextureWrapMode.

If you need to get a large block of pixels, it might be faster to use GetPixels.

**Note:** For depth data based WebCamTexture instances, the depth value (distance in meters) can be accessed using the Color.r property. Additional resources: WebCamTexture.isDepth.

Additional resources: GetPixels32, GetPixels.
