<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetGlobalTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add a "set global shader texture property" command, referencing a RenderTexture.

When the command buffer will be executed, a global shader texture property will be set at this point. The effect is as if Shader.SetGlobalTexture was called, but with a RenderTexture instead of a Texture. Additional resources: RenderTargetIdentifier, RenderTextureSubElement.
