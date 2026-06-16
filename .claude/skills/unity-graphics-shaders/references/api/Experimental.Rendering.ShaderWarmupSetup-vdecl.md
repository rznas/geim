<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.ShaderWarmupSetup-vdecl.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The vertex data layout to use when prewarming shader variants.

For information on shader loading and prewarming, including a list of different prewarming techniques, see Shader loading.

On modern graphics APIs, such as DX12, Metal, and Vulkan, the graphics driver uses the vertex data layout when it creates shader progams. Use this to correctly prewarm shader variants for these graphics APIs.

Additional resources: VertexAttributeDescriptor, ShaderWarmup, Shader loading
