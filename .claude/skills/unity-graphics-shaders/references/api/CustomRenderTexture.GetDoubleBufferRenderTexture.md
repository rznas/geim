<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomRenderTexture.GetDoubleBufferRenderTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**RenderTexture** If CustomRenderTexture. doubleBuffered is true, this returns the Render Texture that this Custom Render Texture uses for double buffering. If CustomRenderTexture. doubleBuffered is false, this returns null.

### Description

Gets the Render Texture that this Custom Render Texture uses for double buffering.

Use this if you are implementing your own Custom Render Texture update loop for a Custom Render Texture that is double buffered. Additional resources: Rendering.GraphicsSettings.disableBuiltinCustomRenderTextures, CustomRenderTexture.doubleBuffered.
