<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetComputeConstantBufferParam.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| computeShader | The ComputeShader to set parameter for. |
| nameID | The ID of the property name for the constant buffer in shader code. Use Shader.PropertyToID to get this ID. |
| name | The name of the constant buffer in shaders code. |
| buffer | The buffer to bind as constant buffer. |
| offset | The offset in bytes from the beginning of the buffer to bind. Must be a multiple of SystemInfo.constantBufferOffsetAlignment, or 0 if that value is 0. |
| size | The number of bytes to bind. |

### Description

Adds a command to set a constant buffer on a ComputeShader.

See ComputeShader.SetConstantBuffer for usage.
