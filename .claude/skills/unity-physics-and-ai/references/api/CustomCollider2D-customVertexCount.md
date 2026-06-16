<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomCollider2D-customVertexCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total number of vertices used by the Collider. (Read Only)

All the Collider shapes with a total shape count of customShapeCount use all the vertices represented here.

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
        customCollider.SetCustomShapes(shapeGroup);        // Validate the custom shape vertices.
        Assert.AreApproximatelyEqual(shapeGroup.vertexCount, customCollider.customVertexCount);
    }
}
```
