<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.TextureGenerationSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents how a texture should be generated from calling TextureGenerator.GenerateTexture.

### Properties

| Property | Description |
| --- | --- |
| assetPath | Path where the Asset will be placed. |
| enablePostProcessor | When set to true, the AssetPostprocessor hooks will be called during texture generation. The following will hold for any AssetPostprocessors triggered through TextureGenerator.GenerateTexture - When the postprocessor is invoked AssetPostprocessor.assetPath will be set to the assetPath value in this structure. - The value of AssetPostprocessor.context will be set to null. - Only OnPostprocessTexture, OnPostprocessCubemap, ... is called. The OnPreprocessTexture functions are not called. |
| platformSettings | Platform settings for generating the texture. |
| qualifyForSpritePacking | Indicates if the Sprite generated can be used for atlas packing. |
| secondarySpriteTextures | Secondary textures for the generated Sprites. |
| sourceTextureInformation | Texture format for the image data. |
| spriteImportData | Sprite Asset generation data. |
| spritePackingTag | Tag used for Sprite packing. |
| textureImporterSettings | Settings for generating texture. |

### Constructors

| Constructor | Description |
| --- | --- |
| TextureGenerationSettings | The Constructor initializes to most common value based on the TetureImporterType you pass in. |
