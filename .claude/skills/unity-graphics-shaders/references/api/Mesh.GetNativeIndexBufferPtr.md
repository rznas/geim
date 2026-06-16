<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetNativeIndexBufferPtr.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IntPtr** Pointer to the underlying graphics API index buffer.

### Description

Retrieves a native (underlying graphics API) pointer to the index buffer.

Use this function to retrieve a pointer/handle corresponding to the Mesh index buffer, as it is represented in the native graphics API. This can be used to enable Mesh manipulation from native code plugins.

Index buffer data is either 16 or 32 bit per index, depending on indexFormat. The layout of the index buffer otherwise depends on the MeshTopology that is used (see SetIndices). The most common case is Meshes composed of triangle lists, which have index buffers with three indices per triangle.

The type of data returned depends on the underlying graphics API:

- ID3D11Buffer on D3D11
- ID3D12Resource on D3D12
- id<MTLBuffer> on Metal
- buffer "name" (as GLuint) on OpenGL/ES
- internal representation on Vulkan, that should be accessed via IUnityGraphicsVulkan interface

For most use cases (when writing Mesh data from native code), you need to mark the Mesh as "dynamic" (see MarkDynamic) before getting the native buffer pointer. Generally this switches the buffers to be CPU-writable.

Note that calling this function when using multi-threaded rendering will synchronize with the rendering thread (a slow operation), so best practice is to set up necessary buffer pointers only at initialization time.

Additional resources: Native code plugins, GetNativeVertexBufferPtr, SetIndices.
