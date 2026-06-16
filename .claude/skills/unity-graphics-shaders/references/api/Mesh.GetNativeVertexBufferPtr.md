<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetNativeVertexBufferPtr.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Which vertex buffer to get (some Meshes might have more than one). See vertexBufferCount. |

### Returns

**IntPtr** Pointer to the underlying graphics API vertex buffer.

### Description

Retrieves a native (underlying graphics API) pointer to the vertex buffer.

Use this function to retrieve a pointer/handle corresponding to the mesh vertex buffer, as it is represented in the native graphics API. This can be used to enable Mesh manipulation from native code plugins.

Most Meshes contain only one vertex buffer, but some (such as skinned Meshes on some platforms) might contain more than one. Use vertexBufferCount to query the vertex buffer count.

The data layout of the vertex buffer generally depends on a number of factors, especially for Meshes that are compressed (see **Player Settings** > **Mesh Compression Settings**) and marked as non-readable. For a simple case, generally the layout is as follows:

`float3 position` (12 bytes) 
 `float3 normal` (12 bytes) 
 `byte4 color32` (4 bytes) or `float4 color` (16 bytes) 
 `float2|float3|float4 uv` (8, 12 or 16 bytes) 
 `float2|float3|float4 uv2` (8, 12 or 16 bytes) 
 `float2|float3|float4 uv3` (8, 12 or 16 bytes) 
 `float2|float3|float4 uv4` (8, 12 or 16 bytes) 
 `float4 tangent` (16 bytes)

All vertex components are optional, for example a Mesh might contain only position + normal + one 2D texture coordinate. In that case, the vertex data size in the buffer would be 12+12+8=32 bytes.

You can use HasVertexAttribute, GetVertexAttributeOffset, GetVertexBufferStride methods to query information about the vertex attribute layout of the Mesh.

The type of data returned depends on the underlying graphics API:

- ID3D11Buffer on D3D11
- ID3D12Resource on D3D12
- id<MTLBuffer> on Metal
- buffer "name" (as GLuint) on OpenGL/ES
- internal representation on Vulkan, that should be accessed via IUnityGraphicsVulkan interface

For most use cases (i.e. writing Mesh data from native code), you need to mark the mesh as "dynamic" (see MarkDynamic) before getting the native buffer pointer. Generally this switches the buffers to be CPU-writable.

Note that calling this function when using multi-threaded rendering will synchronize with the rendering thread (a slow operation), so best practice is to set up necessary buffer pointers only at initialization time.

Additional resources: Native code plugins, GetNativeIndexBufferPtr, vertexBufferCount, vertexCount.
