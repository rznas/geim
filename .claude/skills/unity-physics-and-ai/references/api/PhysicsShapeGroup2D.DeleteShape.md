<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.DeleteShape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapeIndex | The index of the shape stored the PhysicsShapeGroup2D. |

### Description

When destroying a shape at the specified `shapeIndex`, all other shapes that exist above the specified `shapeIndex` will have their shape indices updated appropriately.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Add two Circles to the shape group.
        shapeGroup.AddCircle
            (
                center: Vector2.left,
                radius: 1f
            );
        var shapeIndex = shapeGroup.AddCircle
            (
                center: Vector2.right,
                radius: 1f
            );        // Add a Box to the shape group.
        shapeGroup.AddBox
            (
                center: new Vector2(3f, 2f),
                size: new Vector2(1f, 1f)
            );        // Validate the contents.
        Assert.AreEqual(1 + 1 + 1, shapeGroup.shapeCount);
        Assert.AreEqual(1 + 1 + 4, shapeGroup.vertexCount);
        Assert.AreEqual(PhysicsShapeType2D.Circle, shapeGroup.GetShape(0).shapeType);
        Assert.AreEqual(PhysicsShapeType2D.Circle, shapeGroup.GetShape(1).shapeType);
        Assert.AreEqual(PhysicsShapeType2D.Polygon, shapeGroup.GetShape(2).shapeType);        // Delete the second Circle shape.
        shapeGroup.DeleteShape(shapeIndex);        // Validate the contents.
        Assert.AreEqual(1 + 1, shapeGroup.shapeCount);
        Assert.AreEqual(1 + 4, shapeGroup.vertexCount);
        Assert.AreEqual(PhysicsShapeType2D.Circle, shapeGroup.GetShape(0).shapeType);
        Assert.AreEqual(PhysicsShapeType2D.Polygon, shapeGroup.GetShape(1).shapeType);
    }
}
```
