<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.DrawProceduralIndirectNow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| topology | Topology of the procedural geometry. |
| bufferWithArgs | Buffer with draw arguments. |
| argsOffset | Byte offset where in the buffer the draw arguments are. |

### Description

Draws procedural geometry on the GPU.

DrawProceduralIndirectNow does a draw call on the GPU, without any vertex or index buffers. If the shader requires vertex buffers, one of the following occurs depending on platform: - If the vertex buffer is declared but the compiler can optimize it away, the normal DrawProcedural call occurs. - If the compiler is not able to optimize the vertex buffer declaration away, the draw call will be converted into a normal mesh drawing call with emulated vertex buffers injected.

 The latter option has performance overhead so it is recommended not to declare vertex inputs in shaders when using DrawProceduralIndirectNow.

This function only works on platforms that support compute shaders.

The amount of geometry to draw is read from a ComputeBuffer. Typical use case is generating an arbitrary amount of data from a ComputeShader and then rendering that, without requiring a readback to the CPU.

This is mainly useful on Shader Model 4.5 level hardware where shaders can read arbitrary data from ComputeBuffer buffers.

Buffer with arguments, `bufferWithArgs`, has to have four integer numbers at given `argsOffset` offset: vertex count per instance, instance count, start vertex location, and start instance location. This maps to Direct3D11 DrawInstancedIndirect and equivalent functions on other graphics APIs. On OpenGL versions before 4.2 and all OpenGL ES versions that support indirect draw, the last argument is reserved and therefore must be zero.

Note that this call executes immediately, similar to Graphics.DrawMeshNow. It uses the currently set render target, transformation matrices and shader pass.

There's also similar functionality in CommandBuffers, see CommandBuffer.DrawProceduralIndirect.

Additional resources: Graphics.DrawProceduralNow, ComputeBuffer.CopyCount, SystemInfo.supportsComputeShaders.

### Parameters

| Parameter | Description |
| --- | --- |
| topology | Topology of the procedural geometry. |
| indexBuffer | Index buffer used to submit vertices to the GPU. |
| bufferWithArgs | Buffer with draw arguments. |
| argsOffset | Byte offset where in the buffer the draw arguments are. |

### Description

Draws procedural geometry on the GPU.

DrawProceduralIndirectNow does a draw call on the GPU, without a vertex buffer. If the shader requires vertex buffers, one of the following occurs depending on platform: - If the vertex buffer is declared but the compiler can optimize it away, the normal DrawProcedural call occurs. - If the compiler is not able to optimize the vertex buffer declaration away, the draw call will be converted into a normal mesh drawing call with emulated vertex buffers injected.

 The latter option has performance overhead so it is recommended not to declare vertex inputs in shaders when using DrawProceduralIndirectNow. The amount of geometry to draw is read from a ComputeBuffer. Typical use case is generating an arbitrary amount of data from a ComputeShader and then rendering that, without requiring a readback to the CPU.

This is mainly useful on Shader Model 4.5 level hardware where shaders can read arbitrary data from ComputeBuffer buffers.

Buffer with arguments, `bufferWithArgs`, has to have five integer numbers at given `argsOffset` offset: index count per instance, instance count, start index location, base vertex location, and start instance location. This maps to Direct3D11 DrawIndexedInstancedIndirect and equivalent functions on other graphics APIs. On OpenGL versions before 4.2 and all OpenGL ES versions that support indirect draw, the last argument is reserved and therefore must be zero.

Note that this call executes immediately, similar to Graphics.DrawMeshNow. It uses the currently set render target, transformation matrices and shader pass.

There's also similar functionality in CommandBuffers, see CommandBuffer.DrawProceduralIndirect.

Additional resources: Graphics.DrawProceduralNow, ComputeBuffer.CopyCount, SystemInfo.supportsComputeShaders.
