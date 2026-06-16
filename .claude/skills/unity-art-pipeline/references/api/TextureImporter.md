<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Texture importer lets you modify Texture2D import settings from editor scripts.

Settings of this class cover most of the settings exposed in Texture Import Settings. Some settings require you to use TextureImporterSettings. Refer to TextureImporter.SetTextureSettings).

### Properties

| Property | Description |
| --- | --- |
| allowAlphaSplitting | Allows alpha splitting on relevant platforms for this texture. |
| alphaIsTransparency | If the alpha channel of your texture represents transparency, enable this property to dilate the color channels of visible texels into fully transparent areas. This effectively adds padding around transparent areas that prevents filtering artifacts from forming on their edges. Unity does not support this property for HDR textures.This property makes the color data of invisible texels undefined. Disable this property to preserve invisible texels' original color data. |
| alphaSource | Select how the alpha of the imported texture is generated. |
| alphaTestReferenceValue | Returns or assigns the alpha test reference value. |
| androidETC2FallbackOverride | ETC2 texture decompression fallback override on Android devices that don't support ETC2. |
| anisoLevel | Anisotropic filtering level of the texture. |
| borderMipmap | Keeps texture borders the same when generating mipmaps. |
| compressionQuality | The quality of the texture after Crunch compresses it. The range is 0 through 100. A higher value means a larger, better-quality texture, but a longer compression time because Crunch needs more time to try different texture encodings. |
| convertToNormalmap | Convert heightmap to normal map |
| crunchedCompression | Use crunched compression when available. |
| fadeout | Fade out mip levels to gray color. |
| filterMode | Filtering mode of the texture. |
| flipGreenChannel | Indicates whether to invert the green channel values of a normal map. |
| generateCubemap | Cubemap generation mode. |
| heightmapScale | Amount of bumpyness in the heightmap. |
| ignoreMipmapLimit | Enable this flag for textures that should ignore mipmap limit settings. |
| ignorePngGamma | Ignore the Gamma attribute in PNG files. This property does not effect other file formats. |
| isReadable | Whether Unity stores an additional copy of the imported texture's pixel data in CPU-addressable memory. |
| maxTextureSize | Maximum texture size. |
| mipMapBias | Mip map bias of the texture. |
| mipmapEnabled | Generate Mip Maps. |
| mipmapFadeDistanceEnd | Mip level where texture is faded out completely. |
| mipmapFadeDistanceStart | Mip level where texture begins to fade out. |
| mipmapFilter | Mipmap filtering mode. |
| mipmapLimitGroupName | Name of the texture mipmap limit group to which this texture belongs. |
| mipMapsPreserveCoverage | Enables or disables coverage-preserving alpha mipmapping. |
| normalmapFilter | Normal map filtering mode. |
| npotScale | Scaling mode for non power of two textures. |
| qualifiesForSpritePacking | Returns true if this TextureImporter is setup for Sprite packing. |
| secondarySpriteTextures | Secondary textures for the imported Sprites. |
| spriteBorder | Border sizes of the generated sprites. |
| spriteImportMode | Selects Single or Manual import mode for Sprite textures. |
| spritePivot | The point in the Sprite object's coordinate space where the graphic is located. |
| spritePixelsPerUnit | The number of pixels in the sprite that correspond to one unit in world space. |
| sRGBTexture | Whether this texture stores data in sRGB (also called gamma) color space. |
| streamingMipmaps | Enable mipmap streaming for this texture. |
| streamingMipmapsPriority | Relative priority for this texture when reducing memory size in order to hit the memory budget. |
| swizzleA | Specifies the source for the texture's alpha color channel data. |
| swizzleB | Specifies the source for the texture's blue color channel data. |
| swizzleG | Specifies the source for the texture's green color channel data. |
| swizzleR | Specifies the source for the texture's red color channel data. |
| textureCompression | Compression of imported texture. |
| textureShape | The shape of the imported texture. |
| textureType | Which type of texture are we dealing with here. |
| vtOnly | When enabled, this texture can solely be used in combination with a Texture Stack for Virtual Texturing. When enabled the texture is not guaranteed to be available as a Texture2D in the Player (e.g., not accessible from a script). When disabled, the Player includes the texture both as a Texture2D (e.g., accessible from script) and as a streamable texture in a Texture Stack. |
| wrapMode | Texture coordinate wrapping mode. |
| wrapModeU | Texture U coordinate wrapping mode. |
| wrapModeV | Texture V coordinate wrapping mode. |
| wrapModeW | Texture W coordinate wrapping mode for Texture3D. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearPlatformTextureSettings | Clears specific target platform settings. |
| DoesSourceTextureHaveAlpha | Allows you to check whether the texture source image has an alpha channel. |
| GetAutomaticFormat | Returns the TextureImporterFormat that would be automatically chosen for this platform. |
| GetDefaultPlatformTextureSettings | Gets the default platform specific texture settings. |
| GetPlatformTextureSettings | Gets platform specific texture settings. |
| GetSourceTextureWidthAndHeight | Gets the source texture's width and height. |
| ReadTextureImportInstructions | Reads the active texture output instructions of this TextureImporter. |
| ReadTextureSettings | Read texture settings into TextureImporterSettings class. |
| SetPlatformTextureSettings | Sets specific target platform settings. |
| SetTextureSettings | Sets texture importers settings from TextureImporterSettings class. |

### Static Methods

| Method | Description |
| --- | --- |
| IsDefaultPlatformTextureFormatValid | Validates TextureImporterFormat based on the type of the current format (TextureImporterType) and the default platform. |
| IsPlatformTextureFormatValid | Validates TextureImporterFormat based on a specified import type (TextureImporterType) and a specified build target (BuildTarget.). |

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
