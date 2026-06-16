<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GL-sRGBWrite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls whether Linear-to-sRGB color conversion is performed while rendering.

This property is only relevant when Linear Color Space rendering is used. Typically when linear color space is used, non-HDR render textures are treated as sRGB data (i.e. "regular colors"), and fragment shaders outputs are treated as linear color values. So by default the fragment shader color value is converted into sRGB.

However, if you know your fragment shader already outputs sRGB color value for some reason and want to temporarily turn off Linear-to-sRGB write color conversion, you can use this property to achieve that.

Note that the ability to turn off sRGB writes is not supported on all platforms (typically mobile "tile based" GPUs can not do it), so this is considered a "feature of last resort". Usually it is better to create RenderTextures with appropriate color space flag (linear vs sRGB) and not switch the conversions in the middle of rendering into it.

Additional resources: Linear Color Space, RenderTexture.sRGB, RenderTextureReadWrite, PlayerSettings.colorSpace.
