<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BlendShapeBufferLayout.PerShape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this enum to get the blend shape data in blend shape order.

When you call Mesh.GetBlendShapeBuffer with this option, it returns a GraphicsBuffer containing blend shape vertex data ordered by blend shape.

In this buffer, each blend shape vertex comprises:

- An int that represents the index of the mesh vertex to which this data relates.
- A Vector3 that represents the position delta.
- A Vector3 that represents the normal delta.
- A Vector3 that represents the tangent delta.

In this buffer, all the data for each blend shape vertex is contiguous. The data layout is as follows:

* All blend shape vertices that belong to a single blend shape are stored contiguously, followed by all blend shape vertices that belong to another blend shape, and so on

The contiguous blend shape vertex data is stored as an array of 32-bit values. You must manually convert the data to an appropriate type.

To determine which data relates to which blend shape, use Mesh.GetBlendShapeBufferRange.

Unity creates this buffer when it creates the mesh. Accessing this buffer does not result in additional memory allocations.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    public Mesh mesh;
    public ComputeShader computeShader;    void Start()
    {
        // Fetch GraphicsBuffer with Blend Shape data, ordered per shape, from the mesh
        var perShapeBuffer = mesh.GetBlendShapeBuffer(BlendShapeBufferLayout.PerShape);        // Set Blend Shape data buffer to a compute shader
        computeShader.SetBuffer(0, "PerShape_BlendShapeBuffer", perShapeBuffer);        // Dispatch compute shader and access Blend Shape Data on the GPU
        computeShader.Dispatch(0, 64, 1, 1);        // Dispose of GraphicsBuffer to avoid leaking memory
        perShapeBuffer.Dispose();
    }
}
```

Additional resources: Mesh data: blend shapes, Mesh.GetBlendShapeBuffer, UnityEngine.BlendShapeBufferRange.
