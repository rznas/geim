<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetExecutionFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| flags | The flags to set. |

### Description

Set flags describing the intention for how the command buffer will be executed.

Setting execution flags to any value other than none allows exceptions to be thrown when issuing commands that are not compatible with the intended method of execution. For example, command buffers intended for use with async compute cannot contain commands that are used purely for rendering. This method can only be called against empty command buffers, so call it immediately after construction or after calling CommandBuffer.Clear.
