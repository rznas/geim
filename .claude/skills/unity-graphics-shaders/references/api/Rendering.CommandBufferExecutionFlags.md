<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBufferExecutionFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flags describing the intention for how the command buffer will be executed. Set these via CommandBuffer.SetExecutionFlags.

### Properties

| Property | Description |
| --- | --- |
| None | When no flags are specified, the command buffer is considered valid for all means of execution. This is the default for new command buffers. |
| AsyncCompute | Command buffers flagged for async compute execution will throw exceptions if non-compatible commands are added to them. See ScriptableRenderContext.ExecuteCommandBufferAsync and Graphics.ExecuteCommandBufferAsync. |
