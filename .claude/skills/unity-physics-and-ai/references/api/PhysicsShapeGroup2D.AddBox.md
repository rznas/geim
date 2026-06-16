<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.AddBox.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | The center point of the box shape. This is analogous to Collider2D.offset. |
| size | The size of the box. This is identical to BoxCollider2D.size. |
| angle | The angle in degrees the box should be rotated around the `center`. |
| edgeRadius | The radius extending around the edges of the box. This is identical to BoxCollider2D.edgeRadius. |

### Returns

**int** Returns the shape index the shape was added to in the PhysicsShapeGroup2D. This index is used as the main reference when retrieving a shape.

### Description

Adds a box shape (PhysicsShapeType2D.Polygon) to the shape group.

A box shape is a form of convex polygon with four vertices and an `edgeRadius` that extends around the four edges. The ability to add a box shape is a convenience only and does not represent an actual primitive shape.

**NOTE**: A box forms a closed shape and does have an interior therefore its interior is detectable by physics queries etc.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        CreateShape();
        GetShapeFromCollider();
    }    // Create a custom shape.
    void CreateShape()
    {
        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Add a Box (polygon with four vertices).
        // NOTE: Both the angle and edgeRadius arguments are optional.
        var shapeIndex = shapeGroup.AddBox
            (
                center: new Vector2(3f, 2f),
                size: new Vector2(1f, 1f),
                angle: 0f,
                edgeRadius: 0f
            );        // Fetch the actual shape created.
        var physicsShape = shapeGroup.GetShape(shapeIndex);        // Validate what we created.
        Assert.AreEqual(PhysicsShapeType2D.Polygon, physicsShape.shapeType);
        Assert.AreEqual(4, physicsShape.vertexCount);
        Assert.AreApproximatelyEqual(0f, physicsShape.radius);
    }    // Get a physics shape from a Collider.
    void GetShapeFromCollider()
    {
        // Fetch the collider.
        var collider = GetComponent<BoxCollider2D>();        // If the collider is not active and enabled then we'll get no shapes.
        // Let's just quit if not.
        if (!collider.isActiveAndEnabled)
            return;        // Configure the collider.
        collider.offset = new Vector2(3f, 2f);
        collider.size = new Vector2(1f, 1f);        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Get the collider shapes.
        collider.GetShapes(shapeGroup);        // Fetch the actual shape.
        var physicsShape = shapeGroup.GetShape(0);        // Validate what we retrieved.
        Assert.AreEqual(PhysicsShapeType2D.Polygon, physicsShape.shapeType);
        Assert.AreEqual(4, physicsShape.vertexCount);
    }
}
```
