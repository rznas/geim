<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsSettings-disableBuiltinCustomRenderTextureUpdate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disables the built-in update loop for Custom Render Textures, so that you can write your own update loop.

When this is set to true, Unity does not call internally CustomRenderTextureManager.Update, which in turn means that Unity does not call CustomRenderTexture.Update on CustomRenderTextures. You can then implement your own update loop for CustomRenderTextures using CommandBuffers.

When this is set to false, Unity calls CustomRenderTextureManager.Update, which in turn calls CustomRenderTexture.Update on CustomRenderTextures. This is the default behavior.
