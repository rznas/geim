<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.AngleAxis.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a rotation which rotates `angle` degrees around `axis`.

The rotation is counter-clockwise when looking from the origin along the axis of rotation. For more information, refer to Rotation and Orientation in Unity. The magnitude of the axis parameter is not applied.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Sets the transform's current rotation to a new rotation that rotates 30 degrees around the y-axis(Vector3.up)
        transform.rotation = Quaternion.AngleAxis(30, Vector3.up);
    }
}
```
