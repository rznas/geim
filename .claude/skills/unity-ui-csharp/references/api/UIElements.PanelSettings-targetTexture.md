<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelSettings-targetTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies a Render Texture to render the panel's UI on.

This can be used to display UI on a 3D geometry in the Scene, to perform manual UI post-processing, or render the UI on a MSAA-enabled Render Texture.

 When the project color space is linear, you should use a Render Texture whose format is GraphicsFormat.R8G8B8A8_SRGB.

 When the project color space is gamma, you should use a Render Texture whose format is GraphicsFormat.R8G8B8A8_UNorm.
