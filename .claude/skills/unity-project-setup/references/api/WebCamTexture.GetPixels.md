<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WebCamTexture.GetPixels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Color[]** An array that contains the pixel colors.

### Description

Gets the pixel color data for a mipmap level as Color structs.

This method gets pixel data from the texture in CPU memory. Texture.isReadable must be `true`.

The array contains the pixels row by row, starting at the bottom left of the texture. The size of the array is the width × height of the texture. 

Each pixel is a Color struct.

A single call to `GetPixels` is usually faster than multiple calls to GetPixel, especially for large textures. If a lower-precision representation is acceptable, GetPixels32 is faster and uses less memory because it does not perform integer-to-float conversions.

If `GetPixels` fails, Unity throws an exception. `GetPixels` might fail if the array contains too much data.

**Note:** For depth data based WebCamTexture instances, this method returns an array of the depth values via Color.r property. Additional resources: WebCamTexture.isDepth.

### Parameters

| Parameter | Description |
| --- | --- |
| x | The starting x position of the section to fetch. |
| y | The starting y position of the section to fetch. |
| blockWidth | The width of the section to fetch. |
| blockHeight | The height of the section to fetch. |

### Returns

**Color[]** An array that contains the pixel colors.

### Description

Gets the pixel color data for part of the texture as Color structs.

This version of `GetPixels` returns part of the texture instead of the whole texture.

**Note:** For depth data based WebCamTexture instances, this method returns an array of the depth values via Color.r property. Additional resources: WebCamTexture.isDepth.
