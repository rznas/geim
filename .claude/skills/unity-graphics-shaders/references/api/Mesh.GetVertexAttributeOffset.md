<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetVertexAttributeOffset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attr | The vertex data attribute to check for. |

### Returns

**int** The byte offset within a atream of the data attribute, or -1 if it is not present.

### Description

Get offset within a vertex buffer stream of a specific vertex data attribute on this Mesh.

This method returns the byte offset for a specific vertex attribute (like position, normal, or color) relative to the start of an individual vertex's data within the vertex buffer stream that contains that attribute.

Unity allows flexible vertex data layouts where attributes can be interleaved in a single stream (typically stream 0) or separated across multiple streams using SetVertexBufferParams. This function automatically identifies which stream the specified `attr` resides in and calculates its byte offset from the beginning of a vertex element within that particular stream.

Knowing this offset is useful when you need to directly access or interpret raw vertex buffer data, for instance, when working with the MeshData API or GraphicsBuffer, as it allows you to pinpoint the start of the attribute's data within the correct buffer.

If you need to know the specific index of the stream containing the attribute, use GetVertexAttributeStream. To get the total size (stride) of a single vertex within the attribute's stream, use GetVertexBufferStride, passing the stream index obtained from `GetVertexAttributeStream`.

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
            new VertexAttributeDescriptor(VertexAttribute.Color, VertexAttributeFormat.UNorm8, 4, stream:1));        // Prints offsets: 0, 12, 0
        Debug.Log($"Position offset {mesh.GetVertexAttributeOffset(VertexAttribute.Position)}");
        Debug.Log($"Normal offset {mesh.GetVertexAttributeOffset(VertexAttribute.Normal)}");
        Debug.Log($"Color offset {mesh.GetVertexAttributeOffset(VertexAttribute.Color)}");        // Cleanup
        Object.DestroyImmediate(mesh);
    }
}
```

Additional resources: VertexAttribute, HasVertexAttribute, GetVertexAttributeStream, vertexBufferCount, GetVertexBufferStride.
