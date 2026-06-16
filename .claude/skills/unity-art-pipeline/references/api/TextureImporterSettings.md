<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporterSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stores settings of a TextureImporter.

Additional resources: TextureImporter.

### Properties

| Property | Description |
| --- | --- |
| alphaIsTransparency | If the alpha channel of your texture represents transparency, enable this property to dilate the color channels of visible texels into fully transparent areas. This effectively adds padding around transparent areas that prevents filtering artifacts from forming on their edges. Unity does not support this property for HDR textures.This property makes the color data of invisible texels undefined. Disable this property to preserve invisible texels' original color data. |
| alphaSource | Select how the alpha of the imported texture is generated. |
| alphaTestReferenceValue | Returns or assigns the alpha test reference value. |
| aniso | Anisotropic filtering level of the texture. |
| borderMipmap | Enable this to avoid colors seeping out to the edge of the lower Mip levels. Used for light cookies. |
| convertToNormalMap | Convert heightmap to normal map? |
| cubemapConvolution | Convolution mode. |
| fadeOut | Fade out mip levels to gray color? |
| filterMode | Filtering mode of the texture. |
| flipbookColumns | The number of columns in the source image for a Texture2DArray or Texture3D. |
| flipbookRows | The number of rows in the source image for a Texture2DArray or Texture3D. |
| flipGreenChannel | Indicates whether to invert the green channel values of a normal map. |
| generateCubemap | Cubemap generation mode. |
| heightmapScale | Amount of bumpyness in the heightmap. |
| ignoreMipmapLimit | Enable this flag for textures that should ignore mipmap limit settings. |
| ignorePngGamma | Ignore the Gamma attribute in PNG files. This property does not effect other file formats. |
| mipmapBias | Mipmap bias of the texture. |
| mipmapEnabled | Generate mipmaps for the texture? |
| mipmapFadeDistanceEnd | Mip level where texture is faded out to gray completely. |
| mipmapFadeDistanceStart | Mip level where texture begins to fade out to gray. |
| mipmapFilter | Mipmap filtering mode. |
| mipMapsPreserveCoverage | Enables or disables coverage-preserving alpha mipmapping. |
| normalMapFilter | Normal map filtering mode. |
| npotScale | Scaling mode for non power of two textures. |
| readable | Is texture data readable from scripts. |
| singleChannelComponent | Color or Alpha component Single Channel Textures uses. |
| spriteAlignment | Edge-relative alignment of the sprite graphic. |
| spriteBorder | Border sizes of the generated sprites. |
| spriteExtrude | The number of blank pixels to leave between the edge of the graphic and the mesh. |
| spriteGenerateFallbackPhysicsShape | Generates a default physics shape for a Sprite if a physics shape has not been set by the user. |
| spriteMeshType | SpriteMeshType defines the type of Mesh that TextureImporter generates for a Sprite. |
| spriteMode | Sprite texture import mode. |
| spritePivot | Pivot point of the Sprite relative to its graphic's rectangle. |
| spritePixelsPerUnit | The number of pixels in the sprite that correspond to one unit in world space. |
| spriteTessellationDetail | The tessellation detail to be used for generating the mesh for the associated sprite if the SpriteMode is set to Single. For Multiple sprites, use the SpriteEditor to specify the value per sprite. Valid values are in the range [0-1], with higher values generating a tighter mesh. A default of -1 will allow Unity to determine the value automatically. |
| sRGBTexture | Whether this texture stores data in sRGB (also called gamma) color space. |
| streamingMipmaps | Enable mipmap streaming for this texture. |
| streamingMipmapsPriority | Relative priority for this texture when reducing memory size in order to hit the memory budget. |
| swizzleA | Specifies the source for the texture's alpha color channel data. |
| swizzleB | Specifies the source for the texture's blue color channel data. |
| swizzleG | Specifies the source for the texture's green color channel data. |
| swizzleR | Specifies the source for the texture's red color channel data. |
| textureShape | The shape of the imported texture. |
| textureType | Which type of texture are we dealing with here. |
| vtOnly | Enable if the texture is purposed solely for use with a Texture Stack for Virtual Texturing. |
| wrapMode | Texture coordinate wrapping mode. |
| wrapModeU | Texture U coordinate wrapping mode. |
| wrapModeV | Texture V coordinate wrapping mode. |
| wrapModeW | Texture W coordinate wrapping mode for Texture3D. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyTextureType | Configure parameters to import a texture for a purpose of type, as described here. |
| CopyTo | Copy parameters into another TextureImporterSettings object. |

### Static Methods

| Method | Description |
| --- | --- |
| Equal | Test texture importer settings for equality. |
