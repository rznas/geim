<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture-sRGB.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Does this render texture use sRGB read/write conversions? (Read Only).

When Linear color space is used, render textures can perform Linear to sRGB conversions when rendering into them and sRGB to Linear conversions when sampling them in the shaders.

The value of this property is based on the "readWrite" parameter of the RenderTexture constructor.

Additional resources: RenderTextureReadWrite for more details.
