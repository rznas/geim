<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.SetShapeRadius.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapeIndex | The index of the shape stored in the PhysicsShapeGroup2D. The shape index is zero-based with the shape group having a quantity of shapes specified by shapeCount. |
| radius | The value to set the shape radius to. |

### Description

Sets the radius of a shape.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Add a Circle to the shape group.
        var shapeIndex = shapeGroup.AddCircle
            (
                center: Vector2.zero,
                radius: 0.5f
            );        // Fetch the Circle shape and validate the radius.
        var physicsShape = shapeGroup.GetShape(shapeIndex);
        Assert.AreApproximatelyEqual(0.5f, physicsShape.radius);        // Update the Circle radius.
        shapeGroup.SetShapeRadius(shapeIndex, 2f);        // Fetch the Circle shape and validate the radius.
        physicsShape = shapeGroup.GetShape(shapeIndex);
        Assert.AreApproximatelyEqual(2f, physicsShape.radius);
    }
}
```
