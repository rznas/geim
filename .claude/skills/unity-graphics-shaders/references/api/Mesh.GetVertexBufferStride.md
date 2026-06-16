<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetVertexBufferStride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| stream | Vertex data stream index to check for. |

### Returns

**int** Vertex data size in bytes in this stream, or zero if the stream is not present.

### Description

Get vertex buffer stream stride in bytes.

This method returns the stride of a vertex buffer stream, specified by `stream` index. The stride is the total size in bytes occupied by all vertex attributes belonging to a single vertex within that specific stream. It represents the distance in bytes between the beginning of one vertex's data and the beginning of the next vertex's data in the buffer associated with that stream.

You need the stride value when performing calculations for direct buffer access (e.g., using MeshData or GraphicsBuffer) or when interfacing with graphics APIs that require vertex buffer layout information. For example, you can use the stride to calculate the memory address of a specific vertex within the stream's buffer `address = baseAddress + vertexIndex * stride`.

Note: the stride gives the total size of a vertex within the stream, not the offset of a specific attribute within that vertex. To get the offset of a particular attribute within its stream, use GetVertexAttributeOffset.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // Create a Mesh with custom vertex data layout:
        // position and normal go into stream 0,
        // color goes into stream 1.
        var mesh = new Mesh();
        mesh.SetVertexBufferParams(10,
            new VertexAttributeDescriptor(VertexAttribute.Position, VertexAttributeFormat.Float32, 3, stream:0),
            new VertexAttributeDescriptor(VertexAttribute.Normal, VertexAttributeFormat.Float32, 3, stream:0),
            new VertexAttributeDescriptor(VertexAttribute.Color, VertexAttributeFormat.UNorm8, 4, stream:1));        // Prints 2 (two vertex streams)
        Debug.Log($"Vertex stream count: {mesh.vertexBufferCount}");
        // Next two lines print: 24 (12 bytes position + 12 bytes normal), 4 (4 bytes color)
        Debug.Log($"Steam 0 stride {mesh.GetVertexBufferStride(0)}");
        Debug.Log($"Steam 1 stride {mesh.GetVertexBufferStride(1)}");        // Cleanup
        Object.DestroyImmediate(mesh);
    }
}
```

Additional resources: vertexBufferCount, GetVertexAttributeOffset, SetVertexBufferParams.
