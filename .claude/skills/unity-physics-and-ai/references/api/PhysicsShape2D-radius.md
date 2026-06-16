<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShape2D-radius.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The radius of the shape.

All PhysicsShapeType2D use this radius with the exception of the Polygon type. Refer to the individual shape types for details on how the radius is used for the respective shape.

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
            );        // Fetch the shapes.
        var circleShape = shapeGroup.GetShape(circleShapeIndex);
        var capsuleShape = shapeGroup.GetShape(capsuleShapeIndex);        // Validate the shape radius.
        Assert.AreApproximatelyEqual(1f, circleShape.radius);
        Assert.AreApproximatelyEqual(0.5f, capsuleShape.radius);
    }
}
```
