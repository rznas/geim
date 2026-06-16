<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelSettings-forceGammaRendering.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Forces the UI shader to output colors in the gamma color space.

This is only applicable when the project is in linear color space and when the panel is being rendered into a Render Texture with a compatible format (e.g. R8G8B8A8_UNORM). It has no effect when the project color space is set to gamma.

 You can use this feature to combine the SRGB Render Texture from your camera with the UNORM Render Texture of the UI. In an on-screen UI panel, use an ImmediateModeElement to draw a full-screen quad with a custom shader that blends both. 
 
 Additional notes:

- Render Texture read/write operations require additional bandwidth. This could negatively impact performance.
- When a texture is sampled in the fragment shader, the shader will perform a linear-to-gamma color space conversion on the RGB channels. This could negatively impact performance.
- When sampling from a texture, the interpolation between texels or mip levels is still performed in linear color space. This might lead to some visual differences between this mode and the same UI in a gamma project.
