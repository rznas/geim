<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.AddPolygon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vertices | A list of vertices that represent a continuous set of edges of a convex polygon with each vertex connecting to the following vertex to form each edge. The final vertex implicitly connects to the first vertex. The maximum allowed list length is defined by Physics2D.MaxPolygonShapeVertices. |

### Returns

**int** Returns the shape index the shape was added to in the PhysicsShapeGroup2D. This index is used as the main reference when retrieving a shape.

### Description

Adds a polygon shape (PhysicsShapeType2D.Polygon) to the shape group.

A polygon shape is comprised of multiple edges (line segments) defined by all the specified `vertices`.

**NOTE**: A polygon forms a closed shape and does have an interior therefore its interior is detectable by physics queries etc.

```csharp
using System;
using System.Collections.Generic;
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
        var shapeGroup = new PhysicsShapeGroup2D();        // Add a Polygon.
        var shapeIndex = shapeGroup.AddPolygon
            (
                vertices: new List<Vector2>
                {
                    new Vector2(-1f, -1f),
                    new Vector2(1f, -1f),
                    new Vector2(1f, 1f),
                    new Vector2(-1f, 1f)
                }
            );        // Fetch the actual shape created.
        var physicsShape = shapeGroup.GetShape(shapeIndex);        // Validate what we created.
        Assert.AreEqual(PhysicsShapeType2D.Polygon, physicsShape.shapeType);
        Assert.AreEqual(4, physicsShape.vertexCount);
    }    // Get a physics shape from a Collider.
    void GetShapeFromCollider()
    {
        // Fetch the collider.
        var collider = GetComponent<PolygonCollider2D>();        // If the collider is not active and enabled then we'll get no shapes.
        // Let's just quit if not.
        if (!collider.isActiveAndEnabled)
            return;        // Configure the collider.
        collider.SetPath(0,
            new List<Vector2>()
            {
                new Vector2(-1f, -1f),
                new Vector2(1f, -1f),
                new Vector2(1f, 1f),
                new Vector2(-1f, 1f)
            });        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Get the collider shapes.
        collider.GetShapes(shapeGroup);        // Fetch the actual shape.
        var physicsShape = shapeGroup.GetShape(0);        // Validate what we retrieved.
        Assert.AreEqual(PhysicsShapeType2D.Polygon, physicsShape.shapeType);
        Assert.AreEqual(4, physicsShape.vertexCount);
    }
}
```
