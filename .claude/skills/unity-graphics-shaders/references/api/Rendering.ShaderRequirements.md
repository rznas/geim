<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShaderRequirements.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Shader features required by a specific shader. Features are bit flags.

### Properties

| Property | Description |
| --- | --- |
| None | No shader requirements. |
| BaseShaders | Indicates that basic shader capability i.e. Shader Model level 2.0 is required. |
| Interpolators10 | Indicates that support for at least 10 interpolators is required. |
| Interpolators32 | Indicates that support for at least 32 interpolators is required. |
| MRT4 | Indicates that support for multiple render targets (at least 4) is required i.e. support for fragment shaders that can output at least 4 values. |
| MRT8 | Indicates that support for multiple render targets (at least 8) is required i.e. support for fragment shaders that can output at least 8 values. |
| Derivatives | Indicates that support for derivative (ddx/ddy) instructions from the fragment shader stage is required. |
| SampleLOD | Indicates that support for texture sampling from the fragment shader stage with an explicit mipmap level is required. |
| FragCoord | Indicates that support for pixel position (SV_Position) input to the fragment shader stage is required. |
| FragClipDepth | Indicates that support for pixel depth (SV_Position.zw) input to the fragment shader stage is required. |
| Interpolators15Integers | Indicates that support for at least 15 integers and interpolators in total are required. Unity bundles them together because it is extremely unlikely a GPU/API will ever exist that only has part of that. |
| Texture2DArray | Indicates that support for 2D array textures (Texture2DArray) is required. |
| Instancing | Indicates that support for the SV_InstanceID input semantic is required. |
| Geometry | Indicates that geometry shader stage support is required. |
| CubeArray | Indicates that cubemap array (TextureCubeArray) support is required. |
| Compute | Indicates that compute shader support is required. |
| RandomWrite | Indicates that support for random-write textures (UAVs) is required. |
| TessellationCompute | Indicates that support for tessellation using a compute shader for control point processing is required. The Metal graphics API requires this feature for tessellation. |
| TessellationShaders | Indicates that support for tessellation using hull and domain shader stages is required. |
| SparseTexelResident | Indicates that support of sparse textures with sampling instructions that return residency information is requred. |
| FramebufferFetch | Indicates that framebuffer fetch support is required. This is the ability to have fragment shader color arguments with in/out modifiers. |
| MSAATextureSamples | Indicates that support for MSAA textures (e.g. Texture2DMS) is required. |
| SetRTArrayIndexFromAnyShader | Indicates that support for setting the render target array index (SV_RenderTargetArrayIndex) from all shader stages (not just from the geometry shader stage) is required. |
