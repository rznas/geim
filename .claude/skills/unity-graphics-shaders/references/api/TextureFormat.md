<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Format used when creating textures from scripts.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Create a new alpha-only texture and assign it
        // to the renderer's material
        Texture2D texture = new Texture2D(128, 128, TextureFormat.Alpha8, false);
        GetComponent<Renderer>().material.mainTexture = texture;
    }
}
```

Note that not all graphics cards support all texture formats, use SystemInfo.SupportsTextureFormat to check. Also, only the Texture2D class supports texture creation from script with Crunch compression texture formats.

Additional resources: Texture2D, texture assets.

### Properties

| Property | Description |
| --- | --- |
| Alpha8 | Alpha-only texture format, 8 bit integer. |
| ARGB4444 | A 16 bits/pixel texture format. Texture stores color with an alpha channel. |
| RGB24 | Three channel (RGB) texture format, 8-bits unsigned integer per channel. |
| RGBA32 | Four channel (RGBA) texture format, 8-bits unsigned integer per channel. |
| ARGB32 | Color with alpha texture format, 8-bits per channel. |
| RGB565 | A 16 bit color texture format. |
| R16 | Single channel (R) texture format, 16-bits unsigned integer. |
| DXT1 | Compressed color texture format. |
| DXT5 | Compressed color with alpha channel texture format. |
| RGBA4444 | Color and alpha texture format, 4 bit per channel. |
| BGRA32 | Color with alpha texture format, 8-bits per channel. |
| RHalf | Scalar (R) texture format, 16 bit floating point. |
| RGHalf | Two color (RG) texture format, 16 bit floating point per channel. |
| RGBAHalf | RGB color and alpha texture format, 16 bit floating point per channel. |
| RFloat | Scalar (R) texture format, 32 bit floating point. |
| RGFloat | Two color (RG) texture format, 32 bit floating point per channel. |
| RGBAFloat | RGB color and alpha texture format, 32-bit floats per channel. |
| YUY2 | A format that uses the YUV color space and is often used for video encoding or playback. |
| RGB9e5Float | RGB HDR format, with 9 bit mantissa per channel and a 5 bit shared exponent. |
| BC4 | Compressed one channel (R) texture format. |
| BC5 | Compressed two-channel (RG) texture format. |
| BC6H | HDR compressed color texture format. |
| BC7 | High quality compressed color texture format. |
| DXT1Crunched | Compressed color texture format with Crunch compression for smaller storage sizes. |
| DXT5Crunched | Compressed color with alpha channel texture format with Crunch compression for smaller storage sizes. |
| ETC_RGB4 | ETC (GLES2.0) 4 bits/pixel compressed RGB texture format. |
| EAC_R | ETC2 / EAC (GL ES 3.0) 4 bits/pixel compressed unsigned single-channel texture format. |
| EAC_R_SIGNED | ETC2 / EAC (GL ES 3.0) 4 bits/pixel compressed signed single-channel texture format. |
| EAC_RG | ETC2 / EAC (GL ES 3.0) 8 bits/pixel compressed unsigned dual-channel (RG) texture format. |
| EAC_RG_SIGNED | ETC2 / EAC (GL ES 3.0) 8 bits/pixel compressed signed dual-channel (RG) texture format. |
| ETC2_RGB | ETC2 (GL ES 3.0) 4 bits/pixel compressed RGB texture format. |
| ETC2_RGBA1 | ETC2 (GL ES 3.0) 4 bits/pixel RGB+1-bit alpha texture format. |
| ETC2_RGBA8 | ETC2 (GL ES 3.0) 8 bits/pixel compressed RGBA texture format. |
| ASTC_4x4 | ASTC (4x4 pixel block in 128 bits) compressed RGB(A) texture format. |
| ASTC_5x5 | ASTC (5x5 pixel block in 128 bits) compressed RGB(A) texture format. |
| ASTC_6x6 | ASTC (6x6 pixel block in 128 bits) compressed RGB(A) texture format. |
| ASTC_8x8 | ASTC (8x8 pixel block in 128 bits) compressed RGB(A) texture format. |
| ASTC_10x10 | ASTC (10x10 pixel block in 128 bits) compressed RGB(A) texture format. |
| ASTC_12x12 | ASTC (12x12 pixel block in 128 bits) compressed RGB(A) texture format. |
| RG16 | Two channel (RG) texture format, 8-bits unsigned integer per channel. |
| R8 | Single channel (R) texture format, 8-bits unsigned integer. |
| ETC_RGB4Crunched | Compressed color texture format with Crunch compression for smaller storage sizes. |
| ETC2_RGBA8Crunched | Compressed color with alpha channel texture format using Crunch compression for smaller storage sizes. |
| ASTC_HDR_4x4 | ASTC (4x4 pixel block in 128 bits) compressed RGB(A) HDR texture format. |
| ASTC_HDR_5x5 | ASTC (5x5 pixel block in 128 bits) compressed RGB(A) HDR texture format. |
| ASTC_HDR_6x6 | ASTC (6x6 pixel block in 128 bits) compressed RGB(A) HDR texture format. |
| ASTC_HDR_8x8 | ASTC (8x8 pixel block in 128 bits) compressed RGB(A) texture format. |
| ASTC_HDR_10x10 | ASTC (10x10 pixel block in 128 bits) compressed RGB(A) HDR texture format. |
| ASTC_HDR_12x12 | ASTC (12x12 pixel block in 128 bits) compressed RGB(A) HDR texture format. |
| RG32 | Two channel (RG) texture format, 16-bits unsigned integer per channel. |
| RGB48 | Three channel (RGB) texture format, 16-bits unsigned integer per channel. |
| RGBA64 | Four channel (RGBA) texture format, 16-bits unsigned integer per channel. |
| R8_SIGNED | Single channel (R) texture format, 8-bits signed integer. |
| RG16_SIGNED | Two channel (RG) texture format, 8-bits signed integer per channel. |
| RGB24_SIGNED | Three channel (RGB) texture format, 8-bits signed integer per channel. |
| RGBA32_SIGNED | Four channel (RGBA) texture format, 8-bits signed integer per channel. |
| R16_SIGNED | Single channel (R) texture format, 16-bits signed integer. |
| RG32_SIGNED | Two channel (RG) texture format, 16-bits signed integer per channel. |
| RGB48_SIGNED | Three color (RGB) texture format, 16-bits signed integer per channel. |
| RGBA64_SIGNED | Four channel (RGBA) texture format, 16-bits signed integer per channel. |
