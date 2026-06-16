<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShape2D-shapeType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The shape type determines how the vertices and radius are used by this PhysicsShape2D.

Refer to the PhysicsShapeType2D documentation for more information about the different shape types.

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
        var capsuleShape = shapeGroup.GetShape(capsuleShapeIndex);        // Validate the shape types.
        Assert.AreEqual(PhysicsShapeType2D.Circle, circleShape.shapeType);
        Assert.AreEqual(PhysicsShapeType2D.Capsule, capsuleShape.shapeType);
    }
}
```
