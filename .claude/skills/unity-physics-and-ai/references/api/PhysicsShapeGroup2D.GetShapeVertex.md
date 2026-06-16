<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.GetShapeVertex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapeIndex | The index of the shape stored in the PhysicsShapeGroup2D. The shape index is zero-based with the shape group having a quantity of shapes specified by shapeCount. |
| vertexIndex | The index of the shape vertex stored in the PhysicsShapeGroup2D. The vertex index is zero-based with the shape having a quantity of vertex specified by PhysicsShape2D.vertexCount. |

### Returns

**Vector2** Returns the specified shape vertex.

### Description

Gets a single vertex of a shape. The vertex index is zero-based with the shape having a quantity of vertex specified by PhysicsShape2D.vertexCount.

**NOTE**: When accessing multiple vertices, it is more efficient to do one of the following:

- Get all the shape vertices using GetShapeVertices
- Get all the shape group vertices using GetShapeData
- Create the PhysicsShapeGroup2D with explicit shapes and vertices lists using the shape group Constructor

Additional resources: SetShapeVertex.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Add a Capsule to the shape group.
        var shapeIndex = shapeGroup.AddCapsule
            (
                vertex0: Vector2.down,
                vertex1: Vector2.up,
                radius: 0.5f
            );        // Fetch the shape vertices from the shape group.
        var vertex0 = shapeGroup.GetShapeVertex(shapeIndex, vertexIndex: 0);
        var vertex1 = shapeGroup.GetShapeVertex(shapeIndex, vertexIndex: 1);        // validate the Capsule vertices.
        Assert.AreEqual(Vector2.down, vertex0);
        Assert.AreEqual(Vector2.up, vertex1);
    }
}
```
