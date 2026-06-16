<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetVertexAttributeStream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attr | The vertex data attribute to check for. |

### Returns

**int** Stream index of the data attribute, or -1 if it is not present.

### Description

Gets the vertex buffer stream index of a specific vertex data attribute on this Mesh.

This method identifies which vertex buffer stream contains the specified vertex attribute according to the Mesh's current vertex layout.

Unity allows vertex attributes (like position, normal, UVs, color) to be organized flexibly. They can be interleaved together within a single stream (typically stream 0) or distributed across multiple separate streams (streams 0, 1, 2, etc.). You configure this layout using methods like SetVertexBufferParams.

When working with multi-stream layouts, or whenever you need to know which buffer stream holds a particular attribute's data, use this function. For example, you might need the stream index to pass it to other methods like GetVertexBufferStride or GetVertexAttributeOffset, or when accessing specific buffers via the MeshData API.

This function returns the zero-based index of the stream containing the attribute. It does not provide the attribute's byte offset within that stream; use GetVertexAttributeOffset for that purpose.

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
            new VertexAttributeDescriptor(VertexAttribute.Color, VertexAttributeFormat.UNorm8, 4, stream:1));        // Prints stream indices: 0, 0, 1
        Debug.Log($"Position stream {mesh.GetVertexAttributeStream(VertexAttribute.Position)}");
        Debug.Log($"Normal stream {mesh.GetVertexAttributeStream(VertexAttribute.Normal)}");
        Debug.Log($"Color stream {mesh.GetVertexAttributeStream(VertexAttribute.Color)}");        // Cleanup
        Object.DestroyImmediate(mesh);
    }
}
```

Additional resources: VertexAttribute, HasVertexAttribute, GetVertexAttributeOffset, vertexBufferCount, GetVertexBufferStride.
