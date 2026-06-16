<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsFormatUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This utility class contains helper functions that enable you to query properties of a TextureFormat, RenderTextureFormat, or GraphicsFormat. This class also includes format conversion and size calculation functions.

### Static Methods

| Method | Description |
| --- | --- |
| ComputeMipChainSize | Computes the memory size in bytes for a chain of mipmaps. |
| ComputeMipmapSize | Computes the memory size in bytes for a single mipmap. |
| ConvertToAlphaFormat | Input a GraphicsFormat to return an equivalent GraphicsFormat that includes an alpha component. |
| GetAlphaComponentCount | Returns the number of alpha components of the format. |
| GetBlockHeight | Returns the height in texels of a texel block. |
| GetBlockSize | Returns the memory size in bytes of a texel block. |
| GetBlockWidth | Returns the width in texels of a texel block. |
| GetColorComponentCount | Returns the number of color components of the format. |
| GetComponentCount | Returns the number of components this format has. |
| GetDepthBits | Returns the number of bits per pixel this format contains for depth. |
| GetDepthStencilFormat | Returns a supported depth stencil format that has 'minimumDepthBits' of bits or higher per pixel for the depth component if a compatible format exists on the current platform. If 'minimumStencilBits' is higher than 0, and a compatible format exists on the current platform, Unity returns a depth stencil format with 8 bits per pixel for the stencil component. |
| GetFormatString | Returns a string that represents a format enum value. |
| GetGraphicsFormat | Translates RenderTextureFormat or TextureFormat into GraphicsFormat. |
| GetLinearFormat | Returns the equivalent linear format of a GraphicsFormat. For example, this function returns kFormatR8G8B8A8_UNorm if the input is kFormatR8G8B8A8_SRGB. If the input GraphicsFormat is already linear, this function returns the input GraphicsFormat. |
| GetRenderTextureFormat | Translates GraphicsFormat into RenderTextureFormat. |
| GetSRGBFormat | Returns the equivalent sRGB format of a GraphicsFormat. For example, this function returns kFormatR8G8B8A8_SRGB if the input is kFormatR8G8B8A8_UNorm. If the input GraphicsFormat is already sRGB, this function returns the input GraphicsFormat. If there is no equivalent sRGB format, this function returns the input GraphicsFormat. |
| GetSwizzleA | Returns a FormatSwizzle enum that is mapped to the alpha channel for a given format. |
| GetSwizzleB | Returns a FormatSwizzle enum that is mapped to the blue channel for a given format. |
| GetSwizzleG | Returns a FormatSwizzle enum that is mapped to the green channel for a given format. |
| GetSwizzleR | Returns FormatSwizzle enum of which channel is mapped to the R channel for a given format. |
| GetTextureFormat | Translates GraphicsFormat into TextureFormat. |
| HasAlphaChannel | Returns true if the format has an alpha component. Returns false otherwise. |
| Is16BitPackedFormat | Returns true if the format is packed and a 16-bit format. Returns false otherwise. |
| IsAlphaOnlyFormat | Returns true if the format only has an alpha component. Returns false otherwise. |
| IsAlphaTestFormat | Returns true if the format has an alpha component with only 1 or 2 bits. Returns false otherwise. |
| IsASTCFormat | Returns true if the format uses ASTC. Returns false otherwise. |
| IsBCFormat | Returns true if the format is a DXTC, RGTC or BPTC format. Returns false otherwise. |
| IsBPTCFormat | Returns true if the format uses BPTC. Returns false otherwise. |
| IsCompressedFormat | Returns true if the format is compressed. Returns false otherwise. |
| IsCrunchFormat | Returns true if the format data is compressed with Crunch. Returns false otherwise. |
| IsDepthFormat | Returns true if the format is a depth format. Returns false otherwise. |
| IsDepthStencilFormat | Returns true if the format is a depth or stencil format. Returns false otherwise. |
| IsDXTCFormat | Returns true if the format uses DXTC. Returns false otherwise. |
| IsEACFormat | Returns true if the format uses EAC. Returns false otherwise. |
| IsETCFormat | Returns true if the format uses ETC and ETC2. Returns false otherwise. |
| IsFloatFormat | Returns true if the format is a single precision floating point format. Returns false otherwise. |
| IsHalfFormat | Returns true if the format is a half precision floating point format. Returns false otherwise. |
| IsHDRFormat | Returns true if the format is capable of representing HDR data. Returns false otherwise. |
| IsIEEE754Format | Returns true if the format is a floating point format. Returns false otherwise. |
| IsIntegerFormat | Returns true if the format is an integer format. Returns false otherwise. |
| IsNormFormat | Returns true if the format is a normalized format. Returns false otherwise. |
| IsPackedFormat | Returns true if the format is packed. Returns false otherwise. |
| IsRGTCFormat | Returns true if the format uses RGTC. Returns false otherwise. |
| IsSignedFormat | Returns true if the format is a signed format. Returns false otherwise. |
| IsSIntFormat | Returns true if the format is a signed and integer format. Returns false otherwise. |
| IsSNormFormat | Returns true if the format is a signed normalized format. Returns false otherwise. |
| IsSRGBFormat | Returns true if the format performs sRGB to linear on read and linear to sRGB on write. Returns false otherwise. |
| IsStencilFormat | Returns true if the format is a stencil format. Returns false otherwise. |
| IsSwizzleFormat | Returns true if the format is not a RGBA format. Returns false otherwise. |
| IsUIntFormat | Returns true if the format is an unsigned and integer format. Returns false otherwise. |
| IsUNormFormat | Returns true if the format is an unsigned normalized format. Returns false otherwise. |
| IsUnsignedFormat | Returns true if the format is an unsigned format. Returns false otherwise. |
| IsXRFormat | Returns true if the format is an extended range format. With extended range format, the blue, green, and red components are linearly encoded, and their values range from -0.752941 to 1.25098. The alpha component is always clamped to a [0.0, 1.0] range in sampling, rendering, and writing operations, despite supporting values outside this range. Returns false otherwise. |
