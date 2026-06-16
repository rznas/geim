<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D-shapeCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total number of PhysicsShape2D in the shape group. (Read Only)

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    private const int ShapeCount = 10;    void Start()
    {
        // Create a shape group.
        // NOTE: We can hint to the shape group the capacity for shapes so that it's quicker when adding them.
        var shapeGroup = new PhysicsShapeGroup2D(shapeCapacity: ShapeCount);        // Add Boxes to the shape group.
        for (var n = 0; n < ShapeCount; ++n)
        {
            shapeGroup.AddBox
                (
                    center: new Vector2(n, 0f),
                    size: new Vector2(0.25f, 0.25f)
                );
        }        // Validate that we created the specified number of shapes.
        Assert.AreEqual(ShapeCount, shapeGroup.shapeCount);        // Validate that we created the correct number of vertices.
        // NOTE: Each Box has 4 vertices so we multiply this constant by the number of shapes.
        Assert.AreEqual(ShapeCount * 4, shapeGroup.vertexCount);        // Validate each shape.
        for (var n = 0; n < ShapeCount; ++n)
        {
            // Fetch the actual shape created.
            var physicsShape = shapeGroup.GetShape(n);            // Validate the shape.
            Assert.AreEqual(PhysicsShapeType2D.Polygon, physicsShape.shapeType);
            Assert.AreEqual(4, physicsShape.vertexCount);
        }
    }
}
```
