<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.ToAngleAxis.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| angle | The rotation angle in degrees. The value is in the range [0, 360]. |
| axis | The axis of rotation as a normalized `Vector3`. If the quaternion represents no rotation, the axis defaults to `Vector3.right`. |

### Description

Converts a rotation to angle-axis representation.

This method decomposes the quaternion into an angle (in degrees) and a unit vector representing the axis of rotation. Normalize the quaternion before calling this method, otherwise Unity throws an exception.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Extracts the angle - axis from euler angle rotation
        Quaternion rotation = Quaternion.Euler(0, 90, 0);
        rotation.ToAngleAxis(out float angle, out Vector3 axis);
        // angle is 90
        // axis is (0, 1, 0)        // Extracts the angle - axis rotation from the transform rotation
        float transformRotationAngle = 0.0f;
        Vector3 transformRotationAxis = Vector3.zero;
        transform.rotation.ToAngleAxis(out transformRotationAngle, out transformRotationAxis);
    }
}
```
