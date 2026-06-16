<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialPropertyBlock.SetConstantBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the constant buffer to override. |
| value | The buffer to override the constant buffer values with. |
| offset | Offset in bytes from the beginning of the buffer to bind. Must be a multiple of SystemInfo.constantBufferOffsetAlignment, or 0 if that value is 0. |
| size | The number of bytes to bind. |
| nameID | The shader property ID of the constant buffer to override. |

### Description

Sets a ComputeBuffer or GraphicsBuffer as a named constant buffer for the MaterialPropertyBlock.

Additional resources: Material.SetConstantBuffer.
