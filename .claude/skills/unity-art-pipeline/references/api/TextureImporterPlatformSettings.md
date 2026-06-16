<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporterPlatformSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stores platform specifics settings of a TextureImporter.

Additional resources: TextureImporter.

### Properties

| Property | Description |
| --- | --- |
| allowsAlphaSplitting | Allows Alpha splitting on the imported texture when needed (for example ETC1 compression for textures with transparency). |
| androidETC2FallbackOverride | Override for ETC2 decompression fallback on Android devices that don't support ETC2. |
| compressionQuality | The quality of Crunch texture compression. The range is 0 through 100. A higher quality means larger textures and longer compression times. |
| crunchedCompression | Use crunch compression when available. |
| format | Format of imported texture. |
| ignorePlatformSupport | Ignores platform support checks for the selected texture format. |
| maxTextureSize | Maximum texture size. |
| name | Name of the build target. |
| overridden | Set to true in order to override the Default platform parameters by those provided in the TextureImporterPlatformSettings structure. |
| resizeAlgorithm | For Texture to be scaled down choose resize algorithm. ( Applyed only when Texture dimension is bigger than Max Size ). |
| textureCompression | Compression of imported texture. |

### Public Methods

| Method | Description |
| --- | --- |
| CopyTo | Copy parameters into another TextureImporterPlatformSettings object. |
