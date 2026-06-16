<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetIndexBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**GraphicsBuffer** The mesh index buffer as a GraphicsBuffer.

### Description

Retrieves a GraphicsBuffer to the GPU index buffer.

Most of the `Mesh` methods work on a CPU copy of the mesh data, which Unity then uploads to the GPU. For example, SetIndexBufferData modifies CPU copy of the data, and UploadMeshData sends the CPU copy of the data to the GPU.

You can access the GPU copy of the index buffer directly using `GetIndexBuffer`. This allows more direct manipulation of the mesh index data on the GPU, which can potentially improve performance. However, any modifications that you make to the index data this way will not be reflected in the CPU copy of the mesh data.

You can also use this method to make the index buffer available for reading or writing in a ComputeShader. To do that, first request an appropriate buffer binding target via indexBufferTarget, then get the mesh data using `GetIndexBuffer`, and then set it up as a parameter for your shaders using ComputeBuffer.SetBuffer, Material.SetBuffer and similar methods.

If you modify the CPU copy of the data, this can cause the GPU index buffer to be re-created; in that case, you must call `GetIndexBuffer` again.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    public Mesh mesh;
    public ComputeShader computeShader;
    void Start()
    {
        // Mark the index buffer as needing "Raw"
        // (ByteAddressBuffer, RWByteAddressBuffer in HLSL shaders)
        // access.
        mesh.indexBufferTarget |= GraphicsBuffer.Target.Raw;
        // Get the index buffer of the Mesh, and set it up
        // as a buffer parameter to a compute shader.
        var indexBuffer = mesh.GetIndexBuffer();
        computeShader.SetBuffer(0, "MeshIndexBuffer", indexBuffer);
        indexBuffer.Dispose();
    }
}
```

Additional resources: GetVertexBuffer, indexBufferTarget.
