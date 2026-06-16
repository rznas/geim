<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTextureReadWrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Color space conversion mode of a RenderTexture.

When using Gamma color space, no conversions are done of any kind, and this setting is not used.

When Linear color space is used, then by default non-HDR render textures are considered to contain sRGB data (i.e. "regular colors"), and fragment shaders are considered to output linear color values. So by default the fragment shader color value is converted into sRGB when rendering into a texture; and when sampling the texture in the shader the sRGB colors are converted into linear values. This is the sRGB read-write mode; and the Default mode matches that when linear color space is used. When this mode is set on a render texture, RenderTexture.sRGB will return true.

However, if your render texture will contain non-color data (normals, velocities, other custom values) then you don't want Linear<->sRGB conversions to happen. This is the Linear read-write mode. When this mode is set on a render texture, RenderTexture.sRGB will return false.

Note that some render texture formats are always considered to contain "linear" data and no sRGB conversions are ever performed on them, no matter what is the read-write setting. This is true for all "HDR" (floating point) formats, and other formats like Depth or Shadowmap.

Additional resources: Linear Color Space, RenderTexture.sRGB, PlayerSettings.colorSpace, GL.sRGBWrite.

### Properties

| Property | Description |
| --- | --- |
| Default | Default color space conversion based on project settings. |
| Linear | Render texture contains linear (non-color) data; don't perform color conversions on it. |
| sRGB | Render texture contains sRGB (color) data, perform Linear<->sRGB conversions on it. |
