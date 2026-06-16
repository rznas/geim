<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetVertexBufferData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | The source container from which vertex data is copied. |
| dataStart | The first element in the data to copy from. |
| meshBufferStart | The first element in mesh vertex buffer to receive the data. |
| count | The number of elements of type `T` to copy from the `data` container into the Mesh buffer. |
| stream | Vertex buffer stream to set data for (default 0). Value must be within range 0 to 3. |
| flags | Flags controlling the function behavior, see MeshUpdateFlags. |

### Description

Sets the data within a specific vertex buffer stream, copying elements from a source container to a destination range within the `Mesh`'s buffer.

Simple usage of Mesh scripting API involves using functions like vertices, normals to setup vertex data.

For advanced use cases that require maximum performance, you can use the advanced API, which has functions like SetSubMesh, SetIndexBufferParams, SetIndexBufferData, and SetVertexBufferParams. This advanced API gives access to the underlying mesh data structures that primarily work on raw index buffers, vertex buffers and mesh subset data.

You can use `SetVertexBufferData` to set vertex data directly, without using format conversions for each vertex attribute. The supplied data layout has to match the vertex data layout of the mesh (see SetVertexBufferParams, GetVertexAttributes). Partial updates of the data are also possible, via `dataStart`, `meshBufferStart`, `count` parameters.

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using Unity.Collections;public class Example : MonoBehaviour
{
    // Vertex with FP32 position, FP16 2D normal and a 4-byte tangent.
    // In some cases StructLayout attribute needs
    // to be used, to get the data layout match exactly what it needs to be.
    [System.Runtime.InteropServices.StructLayout(System.Runtime.InteropServices.LayoutKind.Sequential)]
    struct ExampleVertex
    {
        public Vector3 pos;
        public ushort normalX, normalY;
        public Color32 tangent;
    }    void Start()
    {
        var mesh = new Mesh();
        // specify vertex count and layout
        var layout = new[]
        {
            new VertexAttributeDescriptor(VertexAttribute.Position, VertexAttributeFormat.Float32, 3),
            new VertexAttributeDescriptor(VertexAttribute.Normal, VertexAttributeFormat.Float16, 2),
            new VertexAttributeDescriptor(VertexAttribute.Tangent, VertexAttributeFormat.UNorm8, 4),
        };
        var vertexCount = 10;
        mesh.SetVertexBufferParams(vertexCount, layout);        // set vertex data
        var verts = new NativeArray<ExampleVertex>(vertexCount, Allocator.Temp);        // ... fill in vertex array data here...        mesh.SetVertexBufferData(verts, 0, 0, vertexCount);
    }
}
```

Additional resources: SetVertexBufferParams, SetIndexBufferParams, SetIndexBufferData, SetSubMesh, MeshUpdateFlags, AcquireReadOnlyMeshData.
