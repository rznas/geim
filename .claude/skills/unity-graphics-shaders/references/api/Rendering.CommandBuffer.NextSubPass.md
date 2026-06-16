<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.NextSubPass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Start the next native subpass as discribed by CommandBuffer.BeginRenderPass.

This can only be called during an active native render pass (encapsulated by CommandBuffer.BeginRenderPass and CommandBuffer.EndRenderPass). You need to call this function for every subpass listed in CommandBuffer.BeginRenderPass expect for the first subpass (implicitly called by BeginRenderPass).
