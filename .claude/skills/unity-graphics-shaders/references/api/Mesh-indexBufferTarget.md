<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-indexBufferTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The intended target usage of the Mesh GPU index buffer.

By default, Mesh index buffers have GraphicsBuffer.Target.Index usage target. If you want to access the mesh index buffer from a compute shader, additional targets need to be requested, for example GraphicsBuffer.Target.Raw.

When setting this property to a new value, Unity destroys the existing buffer, and creates a new buffer with the specified target. In order for the new buffer to be correctly populated with data, the mesh data must reside on the CPU. You can check the Mesh.isReadable property to determine whether the mesh data is accessible on the CPU.

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

Additional resources: Target, GetIndexBuffer, vertexBufferTarget.
