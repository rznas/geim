<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SkinnedMeshRenderer-vertexBufferTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The intended target usage of the skinned mesh GPU vertex buffer.

By default, skinned mesh renderer vertex buffers have GraphicsBuffer.Target.Vertex usage target. If you want to access the vertex buffer from a compute shader, additional targets need to be requested, for example GraphicsBuffer.Target.Raw.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // Mark the vertex buffer as needing "Raw"
        // (ByteAddressBuffer, RWByteAddressBuffer in HLSL shaders)
        // access. We can then use GetVertexBuffer and
        // use it with compute shaders.
        GetComponent<SkinnedMeshRenderer>().vertexBufferTarget |= GraphicsBuffer.Target.Raw;
    }
}
```

Additional resources: Target, GetVertexBuffer, GetPreviousVertexBuffer.
