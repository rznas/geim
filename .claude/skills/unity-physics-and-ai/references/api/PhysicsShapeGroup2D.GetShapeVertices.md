<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.GetShapeVertices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| shapeIndex | The index of the shape stored in the PhysicsShapeGroup2D. The shape index is zero-based with the shape group having a quantity of shapes specified by shapeCount. |
| vertices | A list that will be populated with a copy of all the shape vertices in the PhysicsShapeGroup2D. |

### Description

Gets a copy of the shape vertices in the PhysicsShapeGroup2D.

**NOTE**: Because this is a copy, changing the specified shape `vertices` list afterwards will not change the PhysicsShapeGroup2D.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Add a Capsule to the shape group.
        var shapeIndex = shapeGroup.AddCapsule
            (
                vertex0: Vector2.down,
                vertex1: Vector2.up,
                radius: 0.5f
            );
        // Fetch the shape vertices from the shape group.
        var vertices = new List<Vector2>();
        shapeGroup.GetShapeVertices(shapeIndex, vertices);        // validate the Capsule vertices (2).
        Assert.AreEqual(Vector2.down, vertices[0]);
        Assert.AreEqual(Vector2.up, vertices[1]);
    }
}
```
