<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.DrawProcedural.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| material | Material to use. |
| bounds | The bounding volume surrounding the instances you intend to draw. |
| topology | Topology of the procedural geometry. |
| vertexCount | Vertex count to render. |
| instanceCount | Instance count to render. |
| camera | If `null` (default), the mesh will be drawn in all cameras. Otherwise it will be rendered in the given Camera only. |
| properties | Additional material properties to apply onto material just before this mesh will be drawn. See MaterialPropertyBlock. |
| castShadows | Determines whether the mesh can cast shadows. |
| receiveShadows | Determines whether the mesh can receive shadows. |
| layer | Layer to use. |

### Description

This function is now obsolete. For non-indexed rendering, use Graphics.RenderPrimitives instead. For indexed rendering, use Graphics.RenderPrimitivesIndexed. Draws procedural geometry on the GPU.

This function is now obsolete. For non-indexed rendering, use RenderPrimitives instead. For indexed rendering, use Graphics.RenderPrimitivesIndexed.

DrawProcedural does a draw call on the GPU, without any vertex or index buffers. If the shader requires vertex buffers one of the following occurs depending on platform: If the vertex buffer is declared but compiler can optimize it away then the normal DrawProcedural call will occur. If the compiler is not able to optimize the vertex buffer declaration away then this will be converted into a normal mesh drawing call with emulated vertexbuffers injected. The latter option has performance overhead so it is recommended not to declare vertex inputs in shaders when using DrawProcedural. This is mainly useful on Shader Model 4.5 level hardware where shaders can read arbitrary data from ComputeBuffer buffers.

There's also similar functionality in CommandBuffers, see CommandBuffer.DrawProcedural.

For non-indexed rendering: `public static void DrawProcedural(Material material, Bounds bounds, MeshTopology topology, int vertexCount, int instanceCount = 1, Camera camera = null, MaterialPropertyBlock properties = null, ShadowCastingMode castShadows = ShadowCastingMode.On, bool receiveShadows = true, int layer = 0)`

For indexed rendering (takes GraphicsBuffer indexBuffer): `public static void DrawProcedural(Material material, Bounds bounds, MeshTopology topology, GraphicsBuffer indexBuffer, int indexCount, int instanceCount = 1, Camera camera = null, MaterialPropertyBlock properties = null, ShadowCastingMode castShadows = ShadowCastingMode.On, bool receiveShadows = true, int layer = 0)`

Additional resources: Graphics.RenderPrimitives, Graphics.RenderPrimitivesIndexed, Graphics.DrawProceduralIndirect, SystemInfo.supportsInstancing.

### Parameters

| Parameter | Description |
| --- | --- |
| material | Material to use. |
| bounds | The bounding volume surrounding the instances you intend to draw. |
| topology | Topology of the procedural geometry. |
| indexBuffer | Index buffer used to submit vertices to the GPU. |
| instanceCount | Instance count to render. |
| indexCount | Index count to render. |
| camera | If `null` (default), the mesh will be drawn in all cameras. Otherwise it will be rendered in the given Camera only. |
| properties | Additional material properties to apply onto material just before this mesh will be drawn. See MaterialPropertyBlock. |
| castShadows | Determines whether the mesh can cast shadows. |
| receiveShadows | Determines whether the mesh can receive shadows. |
| layer | Layer to use. |

### Description

Draws procedural geometry on the GPU, with an index buffer.

Use the GraphicsBuffer.Target.Index target flag to create an index buffer.
