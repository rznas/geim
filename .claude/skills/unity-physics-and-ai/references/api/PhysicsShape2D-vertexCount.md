<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShape2D-vertexCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total number of vertices used to represent the shape type.

See PhysicsShapeType2D for details on how each type uses different quantities of vertices to represent itself.

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
        var capsuleShape = shapeGroup.GetShape(capsuleShapeIndex);        // Validate the shape vertex count.
        Assert.AreEqual(1, circleShape.vertexCount);
        Assert.AreEqual(2, capsuleShape.vertexCount);
    }
}
```
