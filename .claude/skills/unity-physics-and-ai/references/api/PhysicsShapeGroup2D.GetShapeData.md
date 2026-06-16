<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.GetShapeData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapes | A list that will be populated with a copy of all the shapes in the PhysicsShapeGroup2D. |
| vertices | A list that will be populated with a copy of all the vertices in the PhysicsShapeGroup2D. |

### Description

Gets a copy of both the shapes and vertices in the PhysicsShapeGroup2D.

**NOTE**: Because this is a copy, changing the specified `shapes` and `vertices` lists afterwards will not change the PhysicsShapeGroup2D.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Add a Circle to the shape group.
        var circleShapeIndex = shapeGroup.AddCircle
            (
                center: new Vector2(-2f, 3f),
                radius: 1f
            );        // Add a Capsule to the shape group.
        var capsuleShapeIndex = shapeGroup.AddCapsule
            (
                vertex0: Vector2.down,
                vertex1: Vector2.up,
                radius: 0.5f
            );        // Validate the contents.
        Assert.AreEqual(PhysicsShapeType2D.Circle, shapeGroup.GetShape(circleShapeIndex).shapeType);
        Assert.AreEqual(PhysicsShapeType2D.Capsule, shapeGroup.GetShape(capsuleShapeIndex).shapeType);        // Fetch the shapes and vertices from the shape group.
        var shapes = new List<PhysicsShape2D>();
        var vertices = new List<Vector2>();
        shapeGroup.GetShapeData(shapes, vertices);        // Fetch the Circle shape and validate shape and vertex.
        var circleShape = shapes[circleShapeIndex];
        Assert.AreEqual(PhysicsShapeType2D.Circle, circleShape.shapeType);
        Assert.AreApproximatelyEqual(1f, circleShape.radius);
        Assert.AreEqual(new Vector2(-2f, 3f), vertices[circleShape.vertexStartIndex]);        // Fetch the Capsule shape and validate shape and vertices (2).
        var capsuleShape = shapes[capsuleShapeIndex];
        Assert.AreEqual(PhysicsShapeType2D.Capsule, capsuleShape.shapeType);
        Assert.AreApproximatelyEqual(0.5f, capsuleShape.radius);
        Assert.AreEqual(Vector2.down, vertices[capsuleShape.vertexStartIndex]);
        Assert.AreEqual(Vector2.up, vertices[capsuleShape.vertexStartIndex + 1]);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| shapes | A NativeArray that will be populated with a copy of all the shapes in the PhysicsShapeGroup2D. |
| vertices | A NativeArray that will be populated with a copy of all the vertices in the PhysicsShapeGroup2D. |

### Description

Gets a copy of both the shapes and vertices in the PhysicsShapeGroup2D.

**NOTE**: Because this is a copy, changing the specified `shapes` and `vertices` arrays afterwards will not change the PhysicsShapeGroup2D.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Add a Circle to the shape group.
        var circleShapeIndex = shapeGroup.AddCircle
            (
                center: new Vector2(-2f, 3f),
                radius: 1f
            );        // Add a Capsule to the shape group.
        var capsuleShapeIndex = shapeGroup.AddCapsule
            (
                vertex0: Vector2.down,
                vertex1: Vector2.up,
                radius: 0.5f
            );        // Validate the contents.
        Assert.AreEqual(PhysicsShapeType2D.Circle, shapeGroup.GetShape(circleShapeIndex).shapeType);
        Assert.AreEqual(PhysicsShapeType2D.Capsule, shapeGroup.GetShape(capsuleShapeIndex).shapeType);        // Fetch the shapes and vertices from the shape group.
        var shapes = new NativeArray<PhysicsShape2D>(shapeGroup.shapeCount, Allocator.Temp);
        var vertices = new NativeArray<Vector2>(shapeGroup.vertexCount, Allocator.Temp);
        shapeGroup.GetShapeData(shapes, vertices);        // Fetch the Circle shape and validate shape and vertex.
        var circleShape = shapes[circleShapeIndex];
        Assert.AreEqual(PhysicsShapeType2D.Circle, circleShape.shapeType);
        Assert.AreApproximatelyEqual(1f, circleShape.radius);
        Assert.AreEqual(new Vector2(-2f, 3f), vertices[circleShape.vertexStartIndex]);        // Fetch the Capsule shape and validate shape and vertices (2).
        var capsuleShape = shapes[capsuleShapeIndex];
        Assert.AreEqual(PhysicsShapeType2D.Capsule, capsuleShape.shapeType);
        Assert.AreApproximatelyEqual(0.5f, capsuleShape.radius);
        Assert.AreEqual(Vector2.down, vertices[capsuleShape.vertexStartIndex]);
        Assert.AreEqual(Vector2.up, vertices[capsuleShape.vertexStartIndex + 1]);        // Dispose of the native arrays.
        vertices.Dispose();
        shapes.Dispose();
    }
}
```
