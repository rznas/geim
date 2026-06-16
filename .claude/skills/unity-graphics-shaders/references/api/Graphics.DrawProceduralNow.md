<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.DrawProceduralNow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| topology | Topology of the procedural geometry. |
| vertexCount | Vertex count to render. |
| instanceCount | Instance count to render. |

### Description

Draws procedural geometry on the GPU.

DrawProceduralNow does a draw call on the GPU, without any vertex or index buffers. If the shader requires vertex buffers, one of the following occurs depending on platform: - If the vertex buffer is declared but the compiler can optimize it away, the normal DrawProcedural call occurs. - If the compiler is not able to optimize the vertex buffer declaration away, the draw call will be converted into a normal mesh drawing call with emulated vertex buffers injected.

 The latter option has performance overhead so it is recommended not to declare vertex inputs in shaders when using DrawProceduralNow. This is mainly useful on Shader Model 4.5 level hardware where shaders can read arbitrary data from ComputeBuffer buffers.

Note that this call executes immediately, similar to Graphics.DrawMeshNow. It uses the currently set render target, transformation matrices and shader pass.

There's also similar functionality in CommandBuffers, see CommandBuffer.DrawProcedural.

Additional resources: Graphics.DrawProceduralIndirectNow, SystemInfo.supportsInstancing.

### Parameters

| Parameter | Description |
| --- | --- |
| topology | Topology of the procedural geometry. |
| indexCount | Index count to render. |
| instanceCount | Instance count to render. |
| indexBuffer | Index buffer used to submit vertices to the GPU. |

### Description

Draws procedural geometry on the GPU.

DrawProceduralNow does a draw call on the GPU, without a vertex buffer. This is mainly useful on Shader Model 4.5 level hardware where shaders can read arbitrary data from ComputeBuffer buffers.

Note that this call executes immediately, similar to Graphics.DrawMeshNow. It uses the currently set render target, transformation matrices and shader pass.

There's also similar functionality in CommandBuffers, see CommandBuffer.DrawProcedural.

Additional resources: Graphics.DrawProceduralIndirectNow, SystemInfo.supportsInstancing.
