<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.EnableKeyword.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| keyword | The global or local shader keyword to enable. |
| material | The material on which to enable the local shader keyword. |
| computeShader | The compute shader for which to enable the local shader keyword. |
| rayTracingShader | The ray tracing shader for which to enable the local shader keyword. |

### Description

Adds a command to enable a global or local shader keyword.

Shader keywords determine which shader variants Unity uses. For information on working with local shader keywords and global shader keywords and how they interact, see Using shader keywords with C# scripts.

Additional resources: Shader variants and keywords, SetKeyword, DisableKeyword, GlobalKeyword, LocalKeyword, Shader.DisableKeyword, Material.DisableKeyword, ComputeShader.DisableKeyword, RayTracingShader.DisableKeyword.
