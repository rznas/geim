<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomCollider2D.ClearCustomShapes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Deletes all the shapes and associated vertices for those shapes from the Collider.

Any existing contacts for this Collider will be recalculated during the next simulation step.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Fetch the custom collider.
        var customCollider = GetComponent<CustomCollider2D>();        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Add 5 Circles to the shape group.
        shapeGroup.AddCircle(center: new Vector2(3f, 0f),  radius: 0.5f);
        shapeGroup.AddCircle(center: new Vector2(4f, 0f),  radius: 0.5f);
        shapeGroup.AddCircle(center: new Vector2(5f, 0f),  radius: 0.5f);
        shapeGroup.AddCircle(center: new Vector2(6f, 0f),  radius: 0.5f);
        shapeGroup.AddCircle(center: new Vector2(7f, 0f),  radius: 0.5f);        // Assign our shapes.
        customCollider.SetCustomShapes(shapeGroup);        // Validate the contents of the custom collider.
        Assert.AreEqual(5, customCollider.customShapeCount);        // Clear all the remaining shapes.
        customCollider.ClearCustomShapes();        // Validate the contents of the custom collider.
        Assert.AreEqual(0, customCollider.customShapeCount);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| shapeIndex | The index of the shape stored in the Collider. |
| shapeCount | The number of shapes to delete starting at the specified index. |

### Description

Deletes a specific number of shapes defined by `shapeCount` starting at `shapeIndex` along with all associated vertices those shapes use.

Any existing contacts for this Collider will be recalculated during the next simulation step.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Fetch the custom collider.
        var customCollider = GetComponent<CustomCollider2D>();        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Add 5 Circles to the shape group.
        shapeGroup.AddCircle(center: new Vector2(3f, 0f),  radius: 0.5f);
        shapeGroup.AddCircle(center: new Vector2(4f, 0f),  radius: 0.5f);
        shapeGroup.AddCircle(center: new Vector2(5f, 0f),  radius: 0.5f);
        shapeGroup.AddCircle(center: new Vector2(6f, 0f),  radius: 0.5f);
        shapeGroup.AddCircle(center: new Vector2(7f, 0f),  radius: 0.5f);        // Assign our shapes.
        customCollider.SetCustomShapes(shapeGroup);        // Validate the contents of the custom collider.
        Assert.AreEqual(5, customCollider.customShapeCount);        // Clear the first 2 shapes.
        customCollider.ClearCustomShapes(shapeIndex: 0, shapeCount: 2);        // Validate the contents of the custom collider.
        Assert.AreEqual(3, customCollider.customShapeCount);        // Clear the remaining 3 shapes.
        customCollider.ClearCustomShapes(shapeIndex: 0, shapeCount: 3);        // Validate the contents of the custom collider.
        Assert.AreEqual(0, customCollider.customShapeCount);
    }
}
```
