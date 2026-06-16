<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.SetGlobalConstantBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the constant buffer retrieved by Shader.PropertyToID. |
| name | The name of the constant buffer to override. |
| value | The buffer to override the constant buffer values with, or null to remove binding. |
| offset | Offset in bytes from the beginning of the buffer to bind. Must be a multiple of SystemInfo.constantBufferOffsetAlignment, or 0 if that value is 0. |
| size | The number of bytes to bind. |

### Description

Sets a ComputeBuffer or GraphicsBuffer as a named constant buffer for all shader types.

See Material.SetConstantBuffer for usage. If a constant buffer is bound both globally and per-material, the per-material buffer is used. However, if a constant buffer is bound globally, it overrides all shader parameters in all materials that reside in any constant buffer with the given name. Use this function with special caution, especially when you're using constant buffer names that are commonly used, as it may have unintended effects.
