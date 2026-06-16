<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Transform.SetParent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| parent | The parent Transform to use. |
| worldPositionStays | If true, the parent-relative position, scale and rotation are modified such that the object keeps the same world space position, rotation and scale as before. |

### Description

Set the parent of the transform.

This method is the same as the parent property except that it also lets the Transform keep its local orientation rather than its global orientation. This means for example, if the GameObject was previously next to its parent, setting `worldPositionStays` to false will move the GameObject to be positioned next to its new parent in the same way.

The default value of `worldPositionStays` argument is true.

The following images are of a scene with three GameObjects: a new parent cube, a parent sphere, and a child sphere.



The new parent cube is on the left of the screen and the child sphere is in its original position, next to the parent sphere on the right of the screen.



After calling `SetParent` with `worldPositionStays` set to true, all objects are in the same position as their original positions.



After calling `SetParent` with `worldPositionStays` set to false, the child sphere is in the same position but is now relative to the new parent cube instead.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public GameObject child;    public Transform parent;    //Invoked when a button is clicked.
    public void Example(Transform newParent)
    {
        // Sets "newParent" as the new parent of the child GameObject.
        child.transform.SetParent(newParent);        // Same as above, except worldPositionStays set to false
        // makes the child keep its local orientation rather than
        // its global orientation.
        child.transform.SetParent(newParent, false);        // Setting the parent to ‘null’ unparents the GameObject
        // and turns child into a top-level object in the hierarchy
        child.transform.SetParent(null);
    }
}
```
