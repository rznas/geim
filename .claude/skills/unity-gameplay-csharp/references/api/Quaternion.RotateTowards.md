<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.RotateTowards.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| from | The unit quaternion to be aligned with `to`. |
| to | The target unit quaternion. |
| maxDegreesDelta | The maximum angle in degrees allowed for this rotation. |

### Returns

**Quaternion** A unit quaternion rotated towards `to` by an angular step of `maxDegreesDelta`.

### Description

Rotates a rotation `from` towards `to`.

The `from` quaternion is rotated towards `to` by an angular step of `maxDegreesDelta`. The rotation will not overshoot the `to` quaternion. Negative values of `maxDegreesDelta` moves away from `to` until the rotation is exactly the opposite direction.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // The object whose rotation we want to match.
    public Transform target;    // Angular speed in degrees per sec.
    public float speed = 1.0f;    void Update()
    {
        // The step size is equal to speed times frame time.
        var step = speed * Time.deltaTime;        // Rotate our transform a step closer to the target's.
        transform.rotation = Quaternion.RotateTowards(transform.rotation, target.rotation, step);
    }
}
```
