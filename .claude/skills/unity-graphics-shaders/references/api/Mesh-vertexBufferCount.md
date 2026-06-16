<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-vertexBufferCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the number of vertex buffers present in the Mesh. (Read Only)

Most Meshes contain only one vertex buffer, but some (such as skinned Meshes on some platforms) might contain more than one. This property is mostly useful together with GetNativeVertexBufferPtr to enable Mesh manipulation from native code plugins.

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
        Debug.Log($"Vertex stream count: {mesh.vertexBufferCount}");        // Cleanup
        Object.DestroyImmediate(mesh);
    }
}
```

Additional resources: Native code plugins, GetNativeVertexBufferPtr, SetVertexBufferParams, GetVertexAttributeOffset.
