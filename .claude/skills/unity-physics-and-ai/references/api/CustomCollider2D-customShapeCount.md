<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomCollider2D-customShapeCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total number of custom PhysicsShape2D assigned to the Collider. (Read Only)

All the shapes represented here contain a total vertex count of customVertexCount.

**NOTE**: This property should not be confused with Collider2D.shapeCount which is a count of active shapes on the Collider2D. The CustomCollider2D has this property too. If a Collider2D is disabled, inactive or in error then the Collider2D.shapeCount will be zero whereas the customShapeCount will always be a count of assigned custom PhysicsShape2D.

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Fetch the custom collider.
        var customCollider = GetComponent<CustomCollider2D>();        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Add a Circle to the shape group.
        shapeGroup.AddCircle
            (
                center: new Vector2(-1f, 0f),
                radius: 0.5f
            );        // Add a box to the shape group.
        shapeGroup.AddBox
            (
                center: new Vector2(1f, 0f),
                size: new Vector2(1f, 1f)
            );        // Assign our shapes.
        customCollider.SetCustomShapes(shapeGroup);        // Validate the custom shape count.
        Assert.AreApproximatelyEqual(shapeGroup.shapeCount, customCollider.customShapeCount);
    }
}
```
