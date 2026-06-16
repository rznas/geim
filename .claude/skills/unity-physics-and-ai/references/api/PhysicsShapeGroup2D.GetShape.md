<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.GetShape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapeIndex | The index of the shape stored the PhysicsShapeGroup2D. The shape index is zero-based with the shape group having a quantity of shapes specified by shapeCount. |

### Returns

**PhysicsShape2D** Returns the shape stored at the specified `shapeIndex`.

### Description

Gets the PhysicsShape2D stored at the specified `shapeIndex`.

**NOTE**: Because the PhysicsShape2D is a struct, this is a copy of the shape therefore changing the shape afterwards will not change the PhysicsShapeGroup2D.

```csharp
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
        Assert.AreEqual(PhysicsShapeType2D.Capsule, shapeGroup.GetShape(capsuleShapeIndex).shapeType);
    }
}
```
