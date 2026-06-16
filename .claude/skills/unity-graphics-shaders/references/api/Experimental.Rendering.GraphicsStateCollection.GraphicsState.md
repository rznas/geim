<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.GraphicsState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A graphics state identifies a specific rendering configuration.

Modern graphics APIs (i.e. Metal, D3D12, Vulkan) use both the active shader variant and rendering configuration to create the accurate GPU representation of a shader.

### Properties

| Property | Description |
| --- | --- |
| attachments | Array of color attachments used in this rendering configuration. |
| baseShadingRate | The pipeline fragment shading rate. |
| depthAttachmentIndex | The index of the attachment to be used as the depth/stencil buffer for this rendering configuration. |
| depthBias | The global depth bias value for this rendering configuration. |
| forceCullMode | The forced cull mode in this rendering configuration. |
| hasEyeTexture | Flag indicating that a VR eye texture is being rendered to in this rendering configuration. |
| invertCulling | Flag indicating if backface culling is inverted in this rendering configuration. |
| invertProjection | Flag indicating if the projection matrix is inverted in this rendering configuration. |
| multiviewCount | The number of VR views used in this rendering configuration. |
| negativeScale | Flag indicating if the mesh has inverted scale in this rendering configuration. |
| renderState | The render state used in this rendering configuration. See: SetRenderStateData. |
| sampleCount | The number of samples per pixel in this rendering configuration. |
| shadingRateCombinerFragment | The second combiner operation between the result of the first combiner operation and the attachment's shading rate. |
| shadingRateCombinerPrimitive | The first combiner operation between the pipeline fragment shading rate and the primitive fragment shading rate. |
| shadingRateIndex | The index of the attachment to be used as the shading rate image for this rendering configuration |
| slopeDepthBias | The global slope depth bias value for this rendering configuration. |
| subPasses | Array containing information of each subpass. |
| subPassIndex | Index of the active subpass in this rendering configuration. |
| topology | The topology of the Mesh, e.g: Triangles, Lines, Quads, Points, etc. used in this rendering configuration. |
| vertexAttributes | Array containing information of vertex attributes. |
| wireframe | Is wireframe mode enabled for this rendering configuration. |

### Public Methods

| Method | Description |
| --- | --- |
| SetMeshData | Sets the relevant graphics state fields according to data from the provided submesh and renderer. |
| SetRenderPassData | Sets the relevant graphics state fields according to the provided render pass data. |
| SetRenderStateData | Sets the render state fields in this graphics state according to the provided shader and pass identifier. |
