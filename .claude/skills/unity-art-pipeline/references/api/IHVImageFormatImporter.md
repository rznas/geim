<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IHVImageFormatImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use IHVImageFormatImporter to modify Texture2D import settings for Textures in IHV (Independent Hardware Vendor) formats from Editor scripts. These formats allow you to import raw texture data and bypass Unity's texture importer, allowing pixel data which might be compressed by an external tool to be converted to a Texture. IHVImageFormatImporter supports the following file formats: .pvr[.astc](https://github.com/ARM-software/astc-encoder/blob/main/Docs/FileFormat.md).ktx[.dds](https://learn.microsoft.com/en-us/windows/win32/direct3ddds/dx-graphics-dds-pguide)

**File Format Support Notes:** 
 
Unity's support for these formats is limited to features that provide essential functionality, with a focus on importing raw compressed texture and pixel data into Unity. Some of the advanced information and metadata stored in these formats may be ignored by Unity. If you encounter import problems, it can be useful to use a different export tool, because the formats are usually output by third-party export tools which interpret the data in different ways.

Some limitations of Unity's graphics stack also apply to all these formats:

- **Block size**: The dimensions of compressed texture formats must be a multiple of the block size. Unity does not support padding to the nearest multiple in blocks.
- **sRGB RG formats**: Unity emulates some formats such as 2 channel RG textures with the sRGB transfer function on each channel, by internally falling back to a RGBA format. The unused channels might contain a value of 0xFF instead of 0x00, leading to unexpected coloring when displayed as RGB on screen. To avoid any issues, only use the rg channels in the shaders for sRGB RG formats.
- **Luma format**: Single channel Luma may be emulated using an equally sized format like R8. As a result, the shader sampled values may be of the format float4(X,0,0,1) instead of float4(X,X,X,1).
- **sRGB settings**: Unity ignores sRGB settings in the imported files. Use the IHVImageFormatImporter I Inspector to set whether a file is sRGB or not.

The following is a list of format specific limitations. Familiarity with each format is required to understand these limitations.

**PVR**

Supports format version 2 and 3.

Supports Texture2D (with optional mipmaps) only, no volume array or cubemaps.

Color space, alpha premultiplication and channel type are ignored and set to Unity's defaults.

Supported formats for v2: The PVR v2 format enum and the mapped Unity format. * MGLPT_PVRTC2,OGL_PVRTC2: if alpha TextureFormat.PVRTC_RGBA2 else TextureFormat.PVRTC_RGB2 * MGLPT_PVRTC4,OGL_PVRTC4: if alpha TextureFormat.PVRTC_RGBA4 else TextureFormat.PVRTC_RGB4 * MGLPT_RGB_888,OGL_RGB_888: TextureFormat.RGB24 * MGLPT_RGB_565,OGL_RGB_565: TextureFormat.RGB565 * D3D_DXT1: TextureFormat.DXT1 * D3D_DXT5: TextureFormat.DXT5 * ETC_RGB_4BPP: TextureFormat.ETC_RGB4 * OGL_RGBA_8888: TextureFormat.RGBA32 * MGLPT_ARGB_4444: TextureFormat.ARGB4444 * OGL_RGBA_4444: TextureFormat.RGBA4444

Supported formats for v3: The PVR v3 format ID and the mapped Unity format. * Id 0: TextureFormat.PVRTC_RGB2 * Id 1: TextureFormat.PVRTC_RGBA2 * Id 2: TextureFormat.PVRTC_RGB4 * Id 3: TextureFormat.PVRTC_RGBA4 * Id 6: TextureFormat.ETC_RGB4 * Id 7: TextureFormat.DXT1 * Id 11: TextureFormat.DXT5 * Id 22: TextureFormat.ETC2_RGB * Id 23: TextureFormat.ETC2_RGBA8 * Id 24: TextureFormat.ETC2_RGBA1 * Id 25: TextureFormat.EAC_R * Id 26: TextureFormat.EAC_RG * Id 27: TextureFormat.ASTC_4x4 * Id 29: TextureFormat.ASTC_5x5 * Id 31: TextureFormat.ASTC_6x6 * Id 34: TextureFormat.ASTC_8x8 * Id 38: TextureFormat.ASTC_10x10 * Id 40: TextureFormat.ASTC_12x12

The following formats specified in the PVR file through a channel order and bitwidth are also supported:

- TextureFormat.BGRA32
- TextureFormat.RGBA32
- TextureFormat.RGBA4444
- TextureFormat.RGB565
- TextureFormat.RGB24
- TextureFormat.Alpha8

**ASTC** 
 
Supports Texture2D (with no mipmaps) only, no volume support.

Supports only 4x4 5x5 6x6 8x8 10x10 12x12 astc block sizes.

**KTX**

Supports Texture2D (with optional mipmaps) only, no volume array or cubemaps.

Only the older KTX v1 format is supported.

sRGB settings of the texture formats are ignored.

Supported formats:

- GL_RGBA8 : TextureFormat.RGBA32
- GL_RGB8 : TextureFormat.RGB24
- GL_RGBA4 : TextureFormat.ARGB4444
- GL_RGB565 : TextureFormat.RGB565
- GL_COMPRESSED_RGB_S3TC_DXT1_EXT : TextureFormat.DXT1
- GL_COMPRESSED_SRGB_S3TC_DXT1_NV : TextureFormat.DXT1
- GL_COMPRESSED_RGBA_S3TC_DXT5_EXT : TextureFormat.DXT5
- GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV : TextureFormat.DXT5
- GL_COMPRESSED_RED_RGTC1 : TextureFormat.BC4
- GL_COMPRESSED_RG_RGTC2 : TextureFormat.BC5
- GL_COMPRESSED_RGBA_BPTC_UNORM_ARB : TextureFormat.BC7
- GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB : TextureFormat.BC7
- GL_COMPRESSED_RGB_PVRTC_2BPPV1_IMG : TextureFormat.PVRTC_RGB2
- GL_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG : TextureFormat.PVRTC_RGBA2
- GL_COMPRESSED_RGB_PVRTC_4BPPV1_IMG : TextureFormat.PVRTC_RGB4
- GL_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG : TextureFormat.PVRTC_RGBA4
- GL_ETC1_RGB8_OES : TextureFormat.ETC_RGB4
- GL_COMPRESSED_R11_EAC : TextureFormat.EAC_R
- GL_COMPRESSED_SIGNED_R11_EAC : TextureFormat.EAC_R_SIGNED
- GL_COMPRESSED_RG11_EAC : TextureFormat.EAC_RG
- GL_COMPRESSED_SIGNED_RG11_EAC : TextureFormat.EAC_RG_SIGNED
- GL_COMPRESSED_RGB8_ETC2 : TextureFormat.ETC2_RGB
- GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 : TextureFormat.ETC2_RGBA1
- GL_COMPRESSED_RGBA8_ETC2_EAC : TextureFormat.ETC2_RGBA8
- GL_COMPRESSED_RGBA_ASTC_4x4_KHR : TextureFormat.ASTC_4x4
- GL_COMPRESSED_RGBA_ASTC_5x5_KHR : TextureFormat.ASTC_5x5
- GL_COMPRESSED_RGBA_ASTC_6x6_KHR : TextureFormat.ASTC_6x6
- GL_COMPRESSED_RGBA_ASTC_8x8_KHR : TextureFormat.ASTC_8x8
- GL_COMPRESSED_RGBA_ASTC_10x10_KHR : TextureFormat.ASTC_10x10
- GL_COMPRESSED_RGBA_ASTC_12x12_KHR : TextureFormat.ASTC_12x12

**DDS** 
 
Supports Texture2D and CubeMap (with optional mipmaps) only, no volume, array or cubemap arrays.

BC7 data cannot be flipped on import. Because of its compression format, Unity imports it upside down.

Supported formats:

DX10 Style formats:

- DXGI_FORMAT_BC1_UNORM : TextureFormat.DXT1
- DXGI_FORMAT_BC1_UNORM_SRGB : TextureFormat.DXT1
- DXGI_FORMAT_BC2_UNORM : TextureFormat.DXT3
- DXGI_FORMAT_BC2_UNORM_SRGB : TextureFormat.DXT3
- DXGI_FORMAT_BC3_UNORM : TextureFormat.DXT5
- DXGI_FORMAT_BC3_UNORM_SRGB : TextureFormat.DXT5
- DXGI_FORMAT_BC4_UNORM : TextureFormat.BC4
- DXGI_FORMAT_BC5_UNORM : TextureFormat.BC5
- DXGI_FORMAT_BC6H_UF16 : TextureFormat.BC6H
- DXGI_FORMAT_BC7_UNORM : TextureFormat.BC7
- DXGI_FORMAT_BC7_UNORM_SRGB : TextureFormat.BC7
- DXGI_FORMAT_R16_FLOAT : TextureFormat.RHalf
- DXGI_FORMAT_R16G16_FLOAT : TextureFormat.RGHalf
- DXGI_FORMAT_R16G16B16A16_FLOAT : TextureFormat.RGBAHalf
- DXGI_FORMAT_R32_FLOAT : TextureFormat.RFloat
- DXGI_FORMAT_R32G32_FLOAT : TextureFormat.RGFloat
- DXGI_FORMAT_R32G32B32A32_FLOAT : TextureFormat.RGBAFloat
- DXGI_FORMAT_R11G11B10_FLOAT : TextureFormat.RGBAHalf, desc->sourceFormat = 26
- DXGI_FORMAT_R8G8B8A8_UNORM : TextureFormat.RGBA32
- DXGI_FORMAT_R8G8B8A8_UNORM_SRGB : TextureFormat.RGBA32
- DXGI_FORMAT_R8_UNORM : TextureFormat.R8
- DXGI_FORMAT_R8G8_UNORM : TextureFormat.RG16
- DXGI_FORMAT_B4G4R4A4_UNORM : TextureFormat.ARGB4444
- DXGI_FORMAT_B5G6R5_UNORM : TextureFormat.RGB565
- DXGI_FORMAT_R16_SNORM : TextureFormat.R16_SIGNED
- DXGI_FORMAT_R16G16_SNORM : TextureFormat.RG32_SIGNED
- DXGI_FORMAT_R16G16B16A16_SNORM : TextureFormat.RGBA64_SIGNED
- DXGI_FORMAT_R8G8B8A8_SNORM : TextureFormat.RGBA32_SIGNED
- DXGI_FORMAT_R8G8_SNORM : TextureFormat.RG16_SIGNED
- DXGI_FORMAT_R8_SNORM : TextureFormat.R8_SIGNED

FOURCC & DX9 Style formats:

- D3DFMT_R16F: TextureFormat.RHalf
- D3DFMT_G16R16F: TextureFormat.RGHalf
- D3DFMT_A16B16G16R16F: TextureFormat.RGBAHalf
- D3DFMT_R32F: TextureFormat.RFloat
- D3DFMT_G32R32F: TextureFormat.RGFloat
- D3DFMT_A32B32G32R32F: TextureFormat.RGBAFloat
- ‘DXT1’: TextureFormat.DXT1
- ‘DXT3’: TextureFormat.DXT3
- ‘DXT5’: TextureFormat.DXT5
- ‘ATI1N’: TextureFormat.BC4
- ‘ATI2N’: TextureFormat.BC5
- ‘A2XY’: TextureFormat.BC5

Bit packed RGB formats (bitcount + mask):

- TextureFormat.BGR24
- TextureFormat.ARGB32
- TextureFormat.RGBA32
- TextureFormat.ARGB4444
- TextureFormat.RGB565

Luminance Alpha Formats:

- TextureFormat.R8 (luminance)
- TextureFormat.Alpha8.

### Properties

| Property | Description |
| --- | --- |
| filterMode | Filtering mode of the texture. |
| ignoreMipmapLimit | Enable if the texture should ignore any texture mipmap limit settings set in the Project Settings. |
| isReadable | Is texture data readable from scripts. |
| mipmapLimitGroupName | Name of the texture mipmap limit group to which this texture belongs. |
| streamingMipmaps | Enable mipmap streaming for this texture. |
| streamingMipmapsPriority | Relative priority for this texture when reducing memory size in order to hit the memory budget. |
| wrapMode | Texture coordinate wrapping mode. |
| wrapModeU | Texture U coordinate wrapping mode. |
| wrapModeV | Texture V coordinate wrapping mode. |
| wrapModeW | Texture W coordinate wrapping mode for Texture3D. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| assetBundleName | Get or set the AssetBundle name. |
| assetBundleVariant | Get or set the AssetBundle variant. |
| assetPath | The path name of the asset for this importer. (Read Only) |
| importSettingsMissing | The value is true when no meta file is provided with the imported asset. |
| userData | Get or set any user data. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| AddRemap | Map a sub-asset from an imported asset (such as an FBX file) to an external Asset of the same type. |
| GetExternalObjectMap | Gets a copy of the external object map used by the AssetImporter. |
| RemoveRemap | Removes an item from the map of external objects. |
| SaveAndReimport | Save asset importer settings if asset importer is dirty. |
| SetAssetBundleNameAndVariant | Set the AssetBundle name and variant. |
| SupportsRemappedAssetType | Checks if the AssetImporter supports remapping the given asset type. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| GetAtPath | Retrieves the asset importer for the asset at path. |
| GetImportLog | Retrieves logs generated during the import of the asset at path. |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
