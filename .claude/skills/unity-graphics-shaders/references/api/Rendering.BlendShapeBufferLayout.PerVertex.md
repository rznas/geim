<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BlendShapeBufferLayout.PerVertex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Order the data by mesh vertex.

When you call Mesh.GetBlendShapeBuffer with this option, it returns a GraphicsBuffer containing blend shape vertex data ordered by mesh vertex.

In this buffer, each blend shape vertex comprises:

- An int that represents the index of the blend shape to which this data relates.
- A Vector3 that represents the position delta.
- A Vector3 that represents the normal delta.
- A Vector3 that represents the tangent delta.

In this buffer, the exact layout depends on the number of mesh vertices. It works as follows:

- Elements 0 to (mesh vertex count + 1) contain indices. These indices describe the start and end positions for the data in the rest of the buffer, ordered by mesh vertex. For example, element 0 is the start position of the data for mesh vertex 0; element 1 is the end position of the data for mesh vertex 0 and the start position of the data for mesh vertex 1, and so on.
- Element at (mesh vertex count + 1) describes the end position for the data for the final mesh vertex.
- After that, the blend shape vertices that relate to each mesh vertex are stored contiguously. For example, all the blend shape vertices that relate to mesh vertex 0 are contiguous, followed by all the blend shape vertices that relate to mesh vertex 1, and so on.

The contiguous blend shape vertex data is stored as an array of 32-bit values. You must manually convert the data to an appropriate type.

Unity does not create this buffer when it first creates the mesh. Instead, it creates this buffer on-demand, the first time you access it. This means that the first time you access the buffer, it results in CPU and GPU memory allocations.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    public Mesh mesh;
    public ComputeShader computeShader;    void Start()
    {
        // Fetch GraphicsBuffer with Blend Shape data, ordered per vertex, from the mesh
        var perVertexBuffer = mesh.GetBlendShapeBuffer(BlendShapeBufferLayout.PerVertex);        // Set Blend Shape data buffer to a compute shader
        computeShader.SetBuffer(0, "PerVertex_BlendShapeBuffer", perVertexBuffer);        // Dispatch compute shader and access Blend Shape Data on the GPU
        computeShader.Dispatch(0, 64, 1, 1);        // Dispose of GraphicsBuffer to avoid leaking memory
        perVertexBuffer.Dispose();
    }
}
```

Additional resources: Mesh data: blend shapes, Mesh.GetBlendShapeBuffer, QualitySettings.skinWeights.
