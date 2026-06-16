<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomCollider2D.SetCustomShape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| physicsShapeGroup | The PhysicsShapeGroup2D to use as the source of shapes and vertices. |
| srcShapeIndex | The source shape index within the `physicsShapeGroup` used to assign to the Collider. |
| dstShapeIndex | The destination shape index within the Collider to copy the source shape to. |

### Description

Sets a single shape and all associated shape vertices from the specified `physicsShapeGroup` into the Collider.

Setting a single shape allows replacing individual shapes within the Collider. Where possible, the Collider will reduce the amount of work required to assign the shape. See GetCustomShapes for more information on this behaviour.

Any existing contacts for this Collider will be recalculated during the next simulation step.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Fetch the custom collider.
        var customCollider = GetComponent<CustomCollider2D>();        // Create an input shape group.
        var inputShapeGroup = new PhysicsShapeGroup2D();        // Add 5 Circles to the shape group.
        inputShapeGroup.AddCircle(center: Vector2.zero,  radius: 0.5f);
        inputShapeGroup.AddCircle(center: Vector2.zero,  radius: 0.6f);
        inputShapeGroup.AddCircle(center: Vector2.zero,  radius: 0.7f);
        inputShapeGroup.AddCircle(center: Vector2.zero,  radius: 0.8f);
        inputShapeGroup.AddCircle(center: Vector2.zero,  radius: 0.9f);        // Assign our shapes.
        customCollider.SetCustomShapes(inputShapeGroup);        // Validate the contents of the custom collider.
        Assert.AreEqual(5, customCollider.customShapeCount);        // Transfer the last shape in the shape group to the first in the custom collider.
        customCollider.SetCustomShape(inputShapeGroup, srcShapeIndex: 4, dstShapeIndex: 0);        // Create an output shape group.
        var outputShapeGroup = new PhysicsShapeGroup2D();        // Get all the custom shapes.
        var shapeCount = customCollider.GetCustomShapes(outputShapeGroup);        // Validate the results.
        Assert.AreEqual(5, shapeCount);
        Assert.AreEqual(5, customCollider.customShapeCount);
        Assert.AreApproximatelyEqual(0.9f, outputShapeGroup.GetShape(shapeIndex: 0).radius);
        Assert.AreApproximatelyEqual(0.6f, outputShapeGroup.GetShape(shapeIndex: 1).radius);
        Assert.AreApproximatelyEqual(0.7f, outputShapeGroup.GetShape(shapeIndex: 2).radius);
        Assert.AreApproximatelyEqual(0.8f, outputShapeGroup.GetShape(shapeIndex: 3).radius);
        Assert.AreApproximatelyEqual(0.9f, outputShapeGroup.GetShape(shapeIndex: 4).radius);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| shapes | The array to use as the source of shapes. |
| vertices | The array to use as the source of vertices. |
| srcShapeIndex | The source shape index within the `shapes` array used to assign to the Collider. |
| dstShapeIndex | The destination shape index within the Collider to copy the source shape to. |

### Description

Sets a single shape and all associated shape vertices from the specified shape and vertices arrays into the Collider.

Setting a single shape allows replacing individual shapes within the Collider. Where possible, the Collider will reduce the amount of work required to assign the shape. See GetCustomShapes for more information on this behaviour.

Any existing contacts for this Collider will be recalculated during the next simulation step.

```csharp
using Unity.Collections;
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Create a native shapes array and populate it with a Circle and Capsule.
        var shapes = new NativeArray<PhysicsShape2D>(2, Allocator.Temp)
        {
            [0] = new PhysicsShape2D() { shapeType = PhysicsShapeType2D.Circle, radius = 0.5f, vertexStartIndex = 0, vertexCount = 1 },
            [1] = new PhysicsShape2D() { shapeType = PhysicsShapeType2D.Circle, radius = 0.6f, vertexStartIndex = 1, vertexCount = 1 },
            [2] = new PhysicsShape2D() { shapeType = PhysicsShapeType2D.Circle, radius = 0.7f, vertexStartIndex = 2, vertexCount = 1 },
            [3] = new PhysicsShape2D() { shapeType = PhysicsShapeType2D.Circle, radius = 0.8f, vertexStartIndex = 3, vertexCount = 1 },
            [4] = new PhysicsShape2D() { shapeType = PhysicsShapeType2D.Circle, radius = 0.9f, vertexStartIndex = 4, vertexCount = 1 },
        };        // Create a native vertices array and populate it with the vertices for the shapes.
        var vertices = new NativeArray<Vector2>(3, Allocator.Temp)
        {
            [0] = Vector2.zero,
            [1] = Vector2.zero,
            [2] = Vector2.zero,
            [3] = Vector2.zero,
            [4] = Vector2.zero,
        };        // Fetch the custom collider.
        var customCollider = GetComponent<CustomCollider2D>();        // Assign all our test shapes.
        customCollider.SetCustomShapes(shapes, vertices);        // Assign the last shape to the first shape.
        customCollider.SetCustomShape(shapes, vertices, srcShapeIndex: 4, dstShapeIndex: 0);        // Get all the custom shapes.
        var outputShapeGroup = new PhysicsShapeGroup2D();
        var shapeCount = customCollider.GetCustomShapes(outputShapeGroup);        // Validate the results.
        Assert.AreEqual(5, shapeCount);
        Assert.AreEqual(5, customCollider.customShapeCount);
        Assert.AreApproximatelyEqual(0.9f, outputShapeGroup.GetShape(shapeIndex: 0).radius);
        Assert.AreApproximatelyEqual(0.6f, outputShapeGroup.GetShape(shapeIndex: 1).radius);
        Assert.AreApproximatelyEqual(0.7f, outputShapeGroup.GetShape(shapeIndex: 2).radius);
        Assert.AreApproximatelyEqual(0.8f, outputShapeGroup.GetShape(shapeIndex: 3).radius);
        Assert.AreApproximatelyEqual(0.9f, outputShapeGroup.GetShape(shapeIndex: 4).radius);
    }
}
```
