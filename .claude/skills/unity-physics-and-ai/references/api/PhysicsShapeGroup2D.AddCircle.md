<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.AddCircle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | The center point of the circle shape. This is analogous to Collider2D.offset. |
| radius | The radius of the circle defining a radius around the `center`. This is identical to CircleCollider2D.radius. |

### Returns

**int** Returns the shape index the shape was added to in the PhysicsShapeGroup2D. This index is used as the main reference when retrieving a shape.

### Description

Adds a circle shape (PhysicsShapeType2D.Circle) to the shape group.

A circle shape is comprised of a single vertex (`center` ) and a `radius` that extends around that vertex. This is the most memory efficient and fastest primitive to use in all use-cases.

**NOTE**: A circle forms a closed shape and does have an interior therefore its interior is detectable by physics queries etc.

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
        var shapeGroup = new PhysicsShapeGroup2D();        // Add a Circle.
        var shapeIndex = shapeGroup.AddCircle
            (
                center: new Vector2(-2f, 3f),
                radius: 1f
            );        // Fetch the actual shape created.
        var physicsShape = shapeGroup.GetShape(shapeIndex);        // Validate what we created.
        Assert.AreEqual(PhysicsShapeType2D.Circle, physicsShape.shapeType);
        Assert.AreApproximatelyEqual(1f, physicsShape.radius);
        Assert.AreEqual(1, physicsShape.vertexCount);
    }    // Get a physics shape from a Collider.
    void GetShapeFromCollider()
    {
        // Fetch the collider.
        var collider = GetComponent<CircleCollider2D>();        // If the collider is not active and enabled then we'll get no shapes.
        // Let's just quit if not.
        if (!collider.isActiveAndEnabled)
            return;        // Configure the collider.
        collider.radius = 1f;        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Get the collider shapes.
        collider.GetShapes(shapeGroup);        // Fetch the actual shape.
        var physicsShape = shapeGroup.GetShape(0);        // Validate what we retrieved.
        Assert.AreEqual(PhysicsShapeType2D.Circle, physicsShape.shapeType);
        Assert.AreApproximatelyEqual(1f, physicsShape.radius);
        Assert.AreEqual(1, physicsShape.vertexCount);
    }
}
```
