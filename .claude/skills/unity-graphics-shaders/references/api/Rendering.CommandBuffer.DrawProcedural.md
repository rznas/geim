<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.DrawProcedural.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| matrix | Transformation matrix to use. |
| material | Material to use. |
| shaderPass | Which pass of the shader to use (or -1 for all passes). |
| topology | Topology of the procedural geometry. |
| vertexCount | Vertex count to render. |
| instanceCount | Instance count to render. |
| properties | Additional material properties to apply just before rendering. See MaterialPropertyBlock. |

### Description

Add a "draw procedural geometry" command.

When the command buffer executes, this will do a draw call on the GPU, without any vertex or index buffers. This is mainly useful on Shader Model 4.5 level hardware where shaders can read arbitrary data from ComputeBuffer buffers.

In the vertex shader, you'd typically use the SV_VertexID and SV_InstanceID input variables to fetch data from some buffers.

Note that the draw call will not have any lighting related shader data (light colors, directions, shadows, light and reflection probes etc.) set up. If the shader used by the material uses any lighting related variables, the results are undefined.

Additional resources: DrawProceduralIndirect, MaterialPropertyBlock, Graphics.DrawProcedural.

### Parameters

| Parameter | Description |
| --- | --- |
| matrix | Transformation matrix to use. |
| material | Material to use. |
| shaderPass | Which pass of the shader to use (or -1 for all passes). |
| topology | Topology of the procedural geometry. |
| indexCount | Index count to render. |
| instanceCount | Instance count to render. |
| indexBuffer | The index buffer used to submit vertices to the GPU. |
| properties | Additional material properties to apply just before rendering. See MaterialPropertyBlock. |

### Description

Add a "draw procedural geometry" command.

When the command buffer executes, this will do a draw call on the GPU, without a vertex buffer. This is mainly useful on Shader Model 4.5 level hardware where shaders can read arbitrary data from ComputeBuffer buffers.

In the vertex shader, you'd typically use the SV_VertexID and SV_InstanceID input variables to fetch data from some buffers.

Additional resources: DrawProceduralIndirect, MaterialPropertyBlock, Graphics.DrawProcedural.
