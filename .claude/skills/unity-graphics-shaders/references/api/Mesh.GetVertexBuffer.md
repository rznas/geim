<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetVertexBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Vertex data stream index to get the buffer for. |

### Returns

**GraphicsBuffer** The mesh vertex buffer as a GraphicsBuffer.

### Description

Retrieves a GraphicsBuffer that provides direct acces to the GPU vertex buffer.

Most of the `Mesh` methods work on a CPU copy of the mesh data, which Unity then uploads to the GPU. For example, SetIndexBufferData modifies CPU copy of the data, and UploadMeshData sends the CPU copy of the data to the GPU.

You can access the GPU copy of the vertex buffer directly using `GetVertexBuffer`. This allows more direct manipulation of the mesh index data on the GPU, which can potentially improve performance. However, any modifications that you make to the index data this way will not be reflected in the CPU copy of the mesh data.

You can also use this method to make the vertex buffer available for reading or writing in a ComputeShader. To do that, first request an appropriate buffer binding target via vertexBufferTarget, then get the mesh data using `GetVertexBuffer`, and then set it up as a parameter for your shaders using ComputeBuffer.SetBuffer, Material.SetBuffer and similar methods.

GetVertexBufferStride, GetVertexAttributeOffset and related methods can be used to query the exact mesh vertex data layout and format, so that the compute shader can access it properly.

If you modify the CPU copy of the data, this can cause the GPU vertex buffers to be re-created; in that case, you must call `GetVertexBuffer` again.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    public Mesh mesh;
    public ComputeShader computeShader;
    void Start()
    {
        // Mark the vertex buffer as needing "Raw"
        // (ByteAddressBuffer, RWByteAddressBuffer in HLSL shaders)
        // access.
        mesh.vertexBufferTarget |= GraphicsBuffer.Target.Raw;
        // Get the vertex buffer of the Mesh, and set it up
        // as a buffer parameter to a compute shader.
        var vertexBuffer = mesh.GetVertexBuffer(0);
        computeShader.SetBuffer(0, "MeshVertexBuffer", vertexBuffer);
        vertexBuffer.Dispose();
    }
}
```

Additional resources: GetIndexBuffer, vertexBufferTarget.
