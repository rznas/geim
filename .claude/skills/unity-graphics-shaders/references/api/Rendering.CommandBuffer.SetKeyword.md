<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.SetKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The local or global shader keyword to set the state for. |
| material | The material for which to set the state of the local shader keyword. |
| computeShader | The compute shader for which to set the state of the local shader keyword. |
| value | The state to set the shader keyword state to. |
| rayTracingShader | The ray tracing shader for which to set the state of the local shader keyword. |

### Description

Adds a command to set the state of a global or local shader keyword.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

Additional resources: Shader variants and keywords, DisableKeyword, EnableKeyword, GlobalKeyword, LocalKeyword, Shader.SetKeyword, Material.SetKeyword, ComputeShader.SetKeyword, RayTracingShader.SetKeyword.
