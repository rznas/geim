<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsShapeGroup2D.Clear.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clears all the vertices and shapes from the PhysicsShapeGroup.

This call clears the lists used to store both vertices and shapes but retains the current shape group capacity (effectively creating an empty shape group).

```csharp
using UnityEngine;
using UnityEngine.Assertions;public class Example : MonoBehaviour
{
    void Start()
    {
        // Create a shape group.
        var shapeGroup = new PhysicsShapeGroup2D();        // Add a Circle to the shape group.
        shapeGroup.AddCircle
            (
                center: Vector2.zero,
                radius: 1f
            );        // Add a Box to the shape group.
        shapeGroup.AddBox
            (
                center: new Vector2(3f, 2f),
                size: new Vector2(1f, 1f)
            );        // Validate the contents.
        Assert.AreEqual(1 + 1, shapeGroup.shapeCount);
        Assert.AreEqual(1 + 4, shapeGroup.vertexCount);
        Assert.AreEqual(PhysicsShapeType2D.Circle, shapeGroup.GetShape(0).shapeType);
        Assert.AreEqual(PhysicsShapeType2D.Polygon, shapeGroup.GetShape(1).shapeType);        // Clear the shape group.
        shapeGroup.Clear();        // Validate the contents.
        Assert.AreEqual(0, shapeGroup.shapeCount);
        Assert.AreEqual(0, shapeGroup.vertexCount);
    }
}
```
