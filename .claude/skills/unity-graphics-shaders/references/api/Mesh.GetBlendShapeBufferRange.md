<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetBlendShapeBufferRange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| blendShapeIndex | Which blend shape to locate the data for. |

### Returns

**BlendShapeBufferRange** A struct that describes the start and end index of the data for the given blend shape.

### Description

Get the location of blend shape vertex data for a given blend shape.

When you call Mesh.GetBlendShapeBuffer with BlendShapeBufferLayout.PerShape, Unity returns a GraphicsBuffer that contains blend shape vertex data, ordered by blend shape.

When you call this function, Unity returns a BlendShapeBufferRange for the given blend shape. Use it to locate the data for that blend shape in the `GraphicsBuffer`.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    public Mesh mesh;
    public ComputeShader computeShader;    void Start()
    {
        // Fetch GraphicsBuffer with Blend Shape data, ordered per shape, from the mesh
        var perShapeBuffer = mesh.GetBlendShapeBuffer(BlendShapeBufferLayout.PerShape);        // Iterate over all Blend Shapes in a mesh
        for(int blendShapeIndex = 0; blendShapeIndex  < mesh.blendShapeCount; ++blendShapeIndex)
        {
            // Fetch which indices in the buffer that are part of this Blend Shape
            var blendShapeRange = mesh.GetBlendShapeBufferRange(blendShapeIndex);            // Set the start and end indices of the Blend Shape in the compute shader
            computeShader.SetInt("_StartIndex", (int)blendShapeRange.startIndex);
            computeShader.SetInt("_EndIndex", (int)blendShapeRange.endIndex);            // Dispatch compute shader and access data between start and end index for this Blend Shape
            computeShader.Dispatch(0, 64, 1, 1);
        }        // Dispose of GraphicsBuffer to avoid leak memory
        perShapeBuffer.Dispose();
    }
}
```

Additional resources: UnityEngine.BlendShapeBufferRange, Mesh.GetBlendShapeBuffer, BlendShapeBufferLayout.PerShape
