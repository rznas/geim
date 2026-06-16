<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BlendShapeBufferRange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the location of blend shape vertex data in a GraphicsBuffer.

When you call Mesh.GetBlendShapeBuffer with BlendShapeBufferLayout.PerShape, Unity returns a GraphicsBuffer that contains blend shape vertex data, ordered by blend shape.

When you call Mesh.GetBlendShapeBufferRange for a given blend shape, Unity returns this struct. Use this struct to locate the data for that blend shape in the `GraphicsBuffer`.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class Example : MonoBehaviour
{
    public Mesh mesh;
    public ComputeShader computeShader;    void Start()
    {
        // Fetch GraphicsBuffer with Blend Shape data, ordered per shape, from the mesh
        var perShapeBuffer = mesh.GetBlendShapeBuffer(BlendShapeBufferLayout.PerShape);        // Iterate over all Blend Shapes in a mesh
        for (int blendShapeIndex = 0; blendShapeIndex  < mesh.blendShapeCount; ++blendShapeIndex)
        {
            // Fetch which indices in the buffer that is part of this Blend Shape
            var blendShapeRange = mesh.GetBlendShapeBufferRange(blendShapeIndex);            // Set the start and end indices of the Blend Shape in the compute shader
            computeShader.SetInt("_StartIndex", (int)blendShapeRange.startIndex);
            computeShader.SetInt("_EndIndex", (int)blendShapeRange.endIndex);            // Dispatch compute shader and access data between start and end index for this Blend Shape
            computeShader.Dispatch(0, 64, 1, 1);
        }        // Dispose of GraphicsBuffer to avoid leak memory
        perShapeBuffer.Dispose();
    }
}
```

Additional resources: Mesh.GetBlendShapeBuffer, Mesh.GetBlendShapeBufferRange, BlendShapeBufferLayout.PerShape.

### Properties

| Property | Description |
| --- | --- |
| endIndex | The index of the last blend shape vertex for the requested blend shape. |
| startIndex | The index of the first blend shape vertex for the requested blend shape. |
