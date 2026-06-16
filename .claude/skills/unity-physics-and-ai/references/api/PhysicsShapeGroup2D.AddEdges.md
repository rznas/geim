<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.AddEdges.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vertices | A list of vertices that represent a continuous set of edges with each vertex connecting to the following vertex to form each edge. |
| edgeRadius | The radius extending around each edge. This is identical to EdgeCollider2D.edgeRadius. |

### Returns

**int** Returns the shape index the shape was added to in the PhysicsShapeGroup2D. This index is used as the main reference when retrieving a shape.

### Description

Adds an edges shape (PhysicsShapeType2D.Edges) to the shape group.

An edge shape is comprised of multiple edges (line segments) defined by all the specified `vertices` and an `edgeRadius` that extends around the all the edge(s).

**NOTE**: Edges do not form closed a shape as they do not have any interior even if the first and last vertex were to overlap therefore the logical interior is not detectable by physics queries etc.

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
        var shapeGroup = new PhysicsShapeGroup2D();        // Add a list of Edges.
        var shapeIndex = shapeGroup.AddEdges
            (
                vertices: new List<Vector2>
                {
                    new Vector2(-4f, 0f),
                    new Vector2(-2f, -0.5f),
                    new Vector2(0f, 0f),
                    new Vector2(2f, -0.5f),
                    new Vector2(4f, 0f),
                },
                edgeRadius: 0.5f
            );        // Fetch the actual shape created.
        var physicsShape = shapeGroup.GetShape(shapeIndex);        // Validate what we created.
        Assert.AreEqual(PhysicsShapeType2D.Edges, physicsShape.shapeType);
        Assert.AreApproximatelyEqual(0.5f, physicsShape.radius);
        Assert.AreEqual(5, physicsShape.vertexCount);
    }    // Get a physics shape from a Collider.
    void GetShapeFromCollider()
    {
        // Fetch the collider.
        var collider = GetComponent<EdgeCollider2D>();        // If the collider is not active and enabled then we'll get no shapes.
        // Let's just quit if not.
        if (!collider.isActiveAndEnabled)
            return;        // Configure the collider.
        collider.SetPoints(
            new List<Vector2>()
            {
                new Vector2(-4f, 0f),
                new Vector2(-2f, -0.5f),
                new Vector2(0f, 0f),
                new Vector2(2f, -0.5f),
                new Vector2(4f, 0f),
            });
        collider.edgeRadius = 0.5f;        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Get the collider shapes.
        collider.GetShapes(shapeGroup);        // Fetch the actual shape.
        var physicsShape = shapeGroup.GetShape(0);        // Validate what we retrieved.
        Assert.AreEqual(PhysicsShapeType2D.Edges, physicsShape.shapeType);
        Assert.AreApproximatelyEqual(0.5f, physicsShape.radius);
        Assert.AreEqual(5, physicsShape.vertexCount);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| vertices | A list of vertices that represent a continuous set of edges with each vertex connecting to the following vertex to form each edge. |
| edgeRadius | The radius extending around each edge. This is identical to EdgeCollider2D.edgeRadius. |
| useAdjacentStart | When the value is true, the `adjacentStart` argument is used. When the value is false, the `adjacentStart` argument is not used. |
| useAdjacentEnd | When the value is true, the `adjacentEnd` argument is used. When the value is false, the `adjacentEnd` argument is not used. |
| adjacentStart | Defines the position of a virtual point adjacent to the start vertex of an edge shape. |
| adjacentEnd | Defines the position of a virtual point adjacent to the end vertex of an edge shape. |

### Returns

**int** Returns the shape index the shape was added to in the PhysicsShapeGroup2D. This index is used as the main reference when retrieving a shape.

### Description

Adds an edge shape (PhysicsShapeType2D.Edges) to the shape group supporting adjacent start and end vertices.

An edges shape is comprised of multiple edges (line segments) defined by all the specified `vertices` and an `edgeRadius` that extends around the all the edge(s).

**NOTE**: Edges do not form closed a shape as they do not have any interior even if the first and last vertex were to overlap therefore the logical interior is not detectable by physics queries etc.
