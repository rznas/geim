<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.Add.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| physicsShapeGroup | The PhysicsShapeGroup2D to add to this shape group. (Read Only) |

### Description

Adds a copy of all the PhysicsShape2D and their geometry from the specified `physicsShapeGroup` into this shape group. The specified `physicsShapeGroup` is not modified.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    private const int ShapeCount = 10;    void Start()
    {
        // Create a shape group and add a Circle to it.
        var shapeGroup1 = new PhysicsShapeGroup2D();
        shapeGroup1.AddCircle
            (
                center: Vector2.zero,
                radius: 1f
            );        // Validate the contents.
        Assert.AreEqual(1, shapeGroup1.shapeCount);
        Assert.AreEqual(1, shapeGroup1.vertexCount);
        Assert.AreEqual(PhysicsShapeType2D.Circle, shapeGroup1.GetShape(0).shapeType);        // Create another shape group and add a Box to it.
        var shapeGroup2 = new PhysicsShapeGroup2D();
        shapeGroup2.AddBox
            (
                center: new Vector2(3f, 2f),
                size: new Vector2(1f, 1f)
            );        // Validate the contents.
        Assert.AreEqual(1, shapeGroup2.shapeCount);
        Assert.AreEqual(4, shapeGroup2.vertexCount);
        Assert.AreEqual(PhysicsShapeType2D.Polygon, shapeGroup2.GetShape(0).shapeType);        // Add the second shape group to the first shape group.
        shapeGroup1.Add(shapeGroup2);        // Validate the contents.
        Assert.AreEqual(1 + 1, shapeGroup1.shapeCount);
        Assert.AreEqual(1 + 4, shapeGroup1.vertexCount);
        Assert.AreEqual(PhysicsShapeType2D.Circle, shapeGroup1.GetShape(0).shapeType);
        Assert.AreEqual(PhysicsShapeType2D.Polygon, shapeGroup1.GetShape(1).shapeType);
    }
}
```
