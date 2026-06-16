<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomRenderTexture.EnsureDoubleBufferConsistency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Updates the internal Render Texture that a Custom Render Texture uses for double buffering, so that it matches the size and format of the Custom Render Texture.

Use this if you are implementing your own Custom Render Texture update loop for a Custom Render Texture that is double buffered. Unity does this automatically as part of the built-in Custom Render Texture update loop. Additional resources: Rendering.GraphicsSettings.disableBuiltinCustomRenderTextures, CustomRenderTexture.doubleBuffered.
