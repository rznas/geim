<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.Slerp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | Start unit quaternion value, returned when t = 0. |
| b | End unit quaternion value, returned when t = 1. |
| t | Interpolation ratio. Value is clamped to the range [0, 1]. |

### Returns

**Quaternion** A unit quaternion spherically interpolated between quaternions `a` and `b`.

### Description

Spherically linear interpolates between unit quaternions `a` and `b` by a ratio of `t`.

Use this to create a rotation which smoothly interpolates between the first unit quaternion `a` to the second unit quaternion `b`, based on the value of the parameter `t`. If the value of the parameter is close to 0, the output will be close to `a`, if it is close to 1, the output will be close to `b`.

```csharp
// Interpolates rotation between the rotations "from" and "to"
// (Choose from and to not to be the same as
// the object you attach this script to)using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Transform from;
    public Transform to;    private float timeCount = 0.0f;    void Update()
    {
        transform.rotation = Quaternion.Slerp(from.rotation, to.rotation, timeCount);
        timeCount = timeCount + Time.deltaTime;
    }
}
```

Additional resources: Lerp, SlerpUnclamped.
