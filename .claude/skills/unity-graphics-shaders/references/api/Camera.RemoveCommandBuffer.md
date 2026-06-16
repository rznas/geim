<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.RemoveCommandBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| evt | When to execute the command buffer during rendering. |
| buffer | The buffer to execute. |

### Description

Remove command buffer from execution at a specified place.

If the same buffer is added multiple times on this camera event, all occurrences of it will be removed. This API is only available with the Built-in renderer.

Additional resources: CommandBuffer, RemoveCommandBuffers, RemoveAllCommandBuffers, AddCommandBuffer, GetCommandBuffers.
