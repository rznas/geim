<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.WarmupAllShaders.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Prewarms all shader variants of all Shaders currently in memory.

For information on shader loading and prewarming, including a list of different prewarming techniques, see Shader loading.

While this method can be convenient, prewarming a large number of shader variants can result in long load times and high memory usage. If this is a problem, consider placing shader variants in a ShaderVariantCollection instead.

**Warning:** This method is fully supported on DX11 and OpenGL. On DX12, Vulkan, and Metal, the graphics driver might still need to perform work if the vertex layout and/or the render target setup is different from the data used to prewarm it. This can result in wasted work and GPU memory, and still leave visible stalls in your application. ShaderWarmup is supported on all graphics APIs.

Additional resources: ShaderWarmup, ShaderVariantCollection.WarmUp, Shader loading
