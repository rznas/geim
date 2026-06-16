<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.CommandBuffer.DrawProceduralIndirect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| matrix | Transformation matrix to use. |
| material | Material to use. |
| shaderPass | Which pass of the shader to use (or -1 for all passes). |
| topology | Topology of the procedural geometry. |
| properties | Additional material properties to apply just before rendering. See MaterialPropertyBlock. |
| bufferWithArgs | Buffer with draw arguments. |
| argsOffset | Byte offset where in the buffer the draw arguments are. |

### Description

Add a "draw procedural geometry" command.

When the command buffer executes, this will do a draw call on the GPU, without any vertex or index buffers. The amount of geometry to draw is read from a ComputeBuffer. Typical use case is generating an arbitrary amount of data from a ComputeShader and then rendering that, without requiring a readback to the CPU.

This is only useful on Shader Model 4.5 level hardware where shaders can read arbitrary data from ComputeBuffer buffers.

Buffer with arguments, `bufferWithArgs`, has to have four integer numbers at given `argsOffset` offset: vertex count per instance, instance count, start vertex location, and start instance location. This maps to Direct3D11 DrawInstancedIndirect and equivalent functions on other graphics APIs. On OpenGL versions before 4.2 and all OpenGL ES versions that support indirect draw, the last argument is reserved and therefore must be zero.

In the vertex shader, you'd typically use SV_VertexID and SV_InstanceID input variables to fetch data from some buffers.

Additional resources: DrawProcedural, MaterialPropertyBlock, Graphics.DrawProceduralIndirect, ComputeBuffer.CopyCount, SystemInfo.supportsComputeShaders.

### Parameters

| Parameter | Description |
| --- | --- |
| indexBuffer | Index buffer used to submit vertices to the GPU. |
| matrix | Transformation matrix to use. |
| material | Material to use. |
| shaderPass | Which pass of the shader to use (or -1 for all passes). |
| topology | Topology of the procedural geometry. |
| bufferWithArgs | Buffer with draw arguments. |
| argsOffset | Byte offset where in the buffer the draw arguments are. |
| properties | Additional material properties to apply just before rendering. See MaterialPropertyBlock. |

### Description

Add a "draw procedural geometry" command.

When the command buffer executes, this will do a draw call on the GPU, without a vertex buffer. The amount of geometry to draw is read from a ComputeBuffer. Typical use case is generating an arbitrary amount of data from a ComputeShader and then rendering that, without requiring a readback to the CPU.

This is only useful on Shader Model 4.5 level hardware where shaders can read arbitrary data from ComputeBuffer buffers.

Buffer with arguments, `bufferWithArgs`, has to have five integer numbers at given `argsOffset` offset: index count per instance, instance count, start index location, base vertex location, and start instance location. This maps to Direct3D11 DrawIndexedInstancedIndirect and equivalent functions on other graphics APIs. On OpenGL versions before 4.2 and all OpenGL ES versions that support indirect draw, the last argument is reserved and therefore must be zero.

In the vertex shader, you'd typically use SV_VertexID and SV_InstanceID input variables to fetch data from some buffers.

Additional resources: DrawProcedural, MaterialPropertyBlock, Graphics.DrawProceduralIndirect, ComputeBuffer.CopyCount, SystemInfo.supportsComputeShaders.
