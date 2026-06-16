<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.Euler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| x | Rotation in degrees around the x-axis. |
| y | Rotation in degrees around the y-axis. |
| z | Rotation in degrees around the z-axis. |

### Returns

**Quaternion** The Euler angle rotation specified by the angles x,y,z converted to a Quaternion. The rotation order is ZXY.

### Description

Converts an input Euler angle rotation specified as three floats to a Quaternion.

Returns a rotation that rotates z degrees around the z-axis, x degrees around the x-axis, and y degrees around the y-axis. Rotations are applied in ZXY order. The output is represented as a Quaternion. The rotation direction is counter-clockwise when looking from the origin along the axis of rotation. For more information, refer to Rotation and Orientation in Unity.

```csharp
using UnityEngine;public class EulerToQuaternionExample : MonoBehaviour
{
    void Start()
    {
        // A rotation 30 degrees around the y-axis
        Quaternion rotation = Quaternion.Euler(0, 30, 0);
        // apply the rotation to this object
        transform.SetLocalPositionAndRotation(transform.localPosition, rotation);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| euler | The x,y,z vector components of euler represent the input Euler angle rotations in degrees around the corresponding axes. |

### Returns

**Quaternion** The Euler angle rotation specified by the angles euler.x,euler.y,euler.z converted to a Quaternion. The rotation order is ZXY.

### Description

Converts an input Euler angle rotation specified as a Vector3 to a Quaternion.

Returns a rotation that rotates `euler.z` degrees around the z-axis, `euler.x` degrees around the x-axis, and `euler.y` degrees around the y-axis. Rotations are applied in ZXY order. The output is represented as a Quaternion. For more information, refer to Rotation and Orientation in Unity.

```csharp
using UnityEngine;public class EulerToQuaternionExample : MonoBehaviour
{
    void Start()
    {
        // A rotation 30 degrees around the y-axis
        Vector3 rotationVector = new Vector3(0, 30, 0);
        Quaternion rotation = Quaternion.Euler(rotationVector);
        // apply the rotation to this object
        transform.SetLocalPositionAndRotation(transform.localPosition, rotation);
    }
}
```
