<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-vertexAttributeCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the number of vertex attributes that the mesh has. (Read Only)

This property returns the number of active vertex attributes (see VertexAttributeDescriptor). Together with GetVertexAttribute it can be used to query information about vertex attributes that are present in the mesh, without needing any managed allocations.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // Create a Mesh with custom vertex data layout
        var mesh = new Mesh();
        mesh.SetVertexBufferParams(10,
            new VertexAttributeDescriptor(VertexAttribute.Position, VertexAttributeFormat.Float32, 3),
            new VertexAttributeDescriptor(VertexAttribute.Normal, VertexAttributeFormat.Float32, 3),
            new VertexAttributeDescriptor(VertexAttribute.Color, VertexAttributeFormat.UNorm8, 4));        // Prints 3 (three attributes)
        Debug.Log($"Vertex stream count: {mesh.vertexAttributeCount}");        // Cleanup
        Object.DestroyImmediate(mesh);
    }
}
```

Additional resources: GetVertexAttribute, GetVertexAttributes, VertexAttributeDescriptor.
