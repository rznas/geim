<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.DisableKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The global or local shader keyword to disable. |
| material | The material on which to disable the local shader keyword. |
| computeShader | The compute shader for which to disable the local shader keyword. |
| rayTracingShader | The ray tracing shader for which to disable the local shader keyword. |

### Description

Adds a command to disable a global or local shader keyword.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

Additional resources: Shader variants and keywords, SetKeyword, EnableKeyword, GlobalKeyword, LocalKeyword, Shader.DisableKeyword, Material.DisableKeyword, ComputeShader.DisableKeyword, RayTracingShader.DisableKeyword.
