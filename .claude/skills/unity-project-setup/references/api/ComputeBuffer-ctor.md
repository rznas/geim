<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ComputeBuffer-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| count | Number of elements in the buffer. |
| stride | Size of one element in the buffer, in bytes. Must be a multiple of 4 and less than 2048, and match the size of the buffer type in the shader. See Compute Shaders for cross-platform compatibility information. |
| type | Type of the buffer, default is ComputeBufferType.Default (structured buffer). |
| usage | Usage mode of the buffer, default is ComputeBufferModeImmutable. |

### Description

Create a Compute Buffer.

Use Release to release the buffer when no longer needed.

Additional resources: SystemInfo.supportsComputeShaders, ComputeShader class, Shader.SetGlobalBuffer, Material.SetBuffer, Compute Shaders.
