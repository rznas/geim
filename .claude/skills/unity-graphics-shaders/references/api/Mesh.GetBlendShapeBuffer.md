<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetBlendShapeBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layout | Which buffer to access. The default value is BlendShapeBufferLayout.PerShape. |

### Returns

**GraphicsBuffer** The blend shape vertex data as a GraphicsBuffer.

### Description

Retrieves a GraphicsBuffer that provides direct read and write access to GPU blend shape vertex data.

The buffer that this function returns is called the blend shape buffer. It contains blend shape vertices, which the GPU uses to deform the mesh into blend shapes.

There are two blend shape buffers that you can access. They use different layout patterns, and contain slightly different data. For more information, see BlendShapeBufferLayout.PerShape and BlendShapeBufferLayout.PerVertex. Compute shader support is required to access this buffer.

The version of this function that takes no parameter is equivalent to calling it with BlendShapeBufferLayout.PerShape as argument.

Mesh.isReadable does not need to be `true` to access this data.

After using this buffer, you should dispose of it.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    public Mesh mesh;
    public ComputeShader computeShader;    void Start()
    {
        // Fetch GraphicsBuffer with Blend Shape data, ordered per shape, from the mesh
        var perShapeBuffer = mesh.GetBlendShapeBuffer(BlendShapeBufferLayout.PerShape);        // Fetch GraphicsBuffer with Blend Shape data, ordered per vertex, from the mesh
        var perVertexBuffer = mesh.GetBlendShapeBuffer(BlendShapeBufferLayout.PerVertex);        // Set Blend Shape data buffers to a compute shader
        computeShader.SetBuffer(0, "PerShape_BlendShapeBuffer", perShapeBuffer);
        computeShader.SetBuffer(0, "PerVertex_BlendShapeBuffer", perVertexBuffer);        // Dispatch compute shader and access Blend Shapes on the GPU, both per vertex and per shape
        computeShader.Dispatch(0, 64, 1, 1);        // Dispose buffers to avoid leaking memory
        perShapeBuffer.Dispose();
        perVertexBuffer.Dispose();
    }
}
```

Additional resources: Blend shapes, BlendShapeBufferLayout, Mesh.GetBoneWeightBuffer.
