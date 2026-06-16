<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/gamma-color-space.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Gamma color space

While a linear workflow ensures more precise rendering, sometimes you may want a gamma workflow (for example, on some platforms the hardware only supports the gamma format).

For information on how to set the color space of your project, refer to Set a project’s color space.

Unity uses the gamma color space for color calculations, and keeps imported textures in the gamma color space. Unity also makes sure **shaders** keep textures in gamma color space, calculate in gamma color space, and write to a framebuffer that doesn’t reapply gamma correction.

Texture Import Settings might show textures as being in linear format, because this avoids shaders recognising the textures as being in gamma color space and automatically removing the gamma correction.

**Note**: You can choose to bypass sRGB sampling in **Color Space: Gamma** mode. For more information on how to do this, refer to Disable sRGB sampling for a texture.
