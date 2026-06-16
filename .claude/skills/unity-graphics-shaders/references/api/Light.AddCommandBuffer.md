<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light.AddCommandBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| evt | When to execute the command buffer during rendering. |
| buffer | The buffer to execute. |
| shadowPassMask | A mask specifying which shadow passes to execute the buffer for. |

### Description

Add a command buffer to be executed at a specified place.

Multiple command buffers can be set to execute at the same light event (or even the same buffer can be added multiple times). To remove command buffer from execution, use RemoveCommandBuffer.

Passing a shadow pass mask allows detailed control over which shadow passes will execute the buffer.

**Important**: This API is compatible only with the Built-In Render Pipeline.

Additional resources: CommandBuffer, ShadowMapPass, RemoveCommandBuffer, GetCommandBuffers.
