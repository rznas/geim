<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.AddCommandBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| evt | When to execute the command buffer during rendering. |
| buffer | The buffer to execute. |

### Description

Add a command buffer to be executed at a specified place.

Multiple command buffers can be set to execute at the same camera event (or even the same buffer can be added multiple times). To remove command buffer from execution, use RemoveCommandBuffer. This API is only available with the Built-in renderer.

Additional resources: CommandBuffer, RemoveCommandBuffer, GetCommandBuffers.
