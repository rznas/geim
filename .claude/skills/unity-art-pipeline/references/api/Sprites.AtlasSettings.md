<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Sprites.AtlasSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the final atlas texture.

Note that if not all Sprites can be fit to an area defined by maxWidth and maxHeight, multiple atlas pages will be generated.

### Properties

| Property | Description |
| --- | --- |
| allowsAlphaSplitting | Marks this atlas so that it contains textures that have been flagged for Alpha splitting when needed (for example ETC1 compression for textures with transparency). |
| anisoLevel | Anisotropic filtering level of the atlas texture. |
| colorSpace | Desired color space of the atlas. |
| compressionQuality | Quality of atlas texture compression in the range [0..100]. |
| enableRotation | Allows Sprite Packer to rotate/flip the Sprite to ensure optimal Packing. |
| filterMode | Filtering mode of the atlas texture. |
| format | The format of the atlas texture. |
| generateMipMaps | Detemines if sprite atlas textures generate mipmaps. |
| maxHeight | Maximum height of the atlas texture. |
| maxWidth | Maximum width of the atlas texture. |
| paddingPower | The amount of extra padding between packed sprites. |
