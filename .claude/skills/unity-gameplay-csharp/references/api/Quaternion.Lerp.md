<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.Lerp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | Start unit quaternion value, returned when t = 0. |
| b | End unit quaternion value, returned when t = 1. |
| t | Interpolation ratio. The value is clamped to the range [0, 1]. |

### Returns

**Quaternion** A unit quaternion interpolated between quaternions `a` and `b`.

### Description

Interpolates between `a` and `b` by `t` and normalizes the result afterwards.

This is faster than Slerp but the angular velocity will not be constant if the rotations are far apart.

```csharp
// Interpolates rotation between the rotations
// of from and to.
// (Choose from and to not to be the same as
// the object you attach this script to)using UnityEngine;public class Example : MonoBehaviour
{
    Transform from;
    Transform to;
    float speed = 0.01f;
    float timeCount = 0.0f;    void Update()
    {
        transform.rotation = Quaternion.Lerp(from.rotation, to.rotation, timeCount * speed);
        timeCount = timeCount + Time.deltaTime;
    }
}
```

Additional resources: Slerp. LerpUnclamped.
