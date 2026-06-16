<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureImporter-sRGBTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether this texture stores data in sRGB (also called gamma) color space.

This setting is only relevant when your project uses Linear color space. It determines whether the GPU converts data from sRGB color space to linear color space when it samples the texture in a shader.

Non-HDR textures that contain color data typically store their data as sRGB values. This data requires conversion, so this value should be `true`.

HDR textures and textures that store data other than color (for example, normal maps) typically store their data as linear values. This data does not require conversion, so this value should be `false`. This value should also be `false` for legacy IMGUI textures.

Unity marks various textures that typically store linear data (normal maps, other non-color textures, and HDR data) as "linear" by default.

This flag corresponds to "sRGB (Color Texture)" option in class-TextureImporter.

Additional resources: Color space, PlayerSettings.colorSpace.
