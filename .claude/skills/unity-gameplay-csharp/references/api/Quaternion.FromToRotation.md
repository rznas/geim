<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.FromToRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fromDirection | A non-unit or unit vector representing a direction axis to rotate. |
| toDirection | A non-unit or unit vector representing the target direction axis. |

### Returns

**Quaternion** A unit quaternion which rotates from `fromDirection` to `toDirection`.

### Description

Creates a rotation from `fromDirection` to `toDirection`.

Use this method to rotate a transform so that one of its axes, such as the y-axis, follows the target direction, `toDirection`, in world space.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Update()
    {
        // Sets the rotation so that the transform's y-axis goes along the global y-axis and the transform's z-axis goes along the global z-axis
        transform.rotation = Quaternion.FromToRotation(transform.up, Vector3.up) * transform.rotation;
        transform.rotation = Quaternion.FromToRotation(transform.forward, Vector3.forward) * transform.rotation;
    }
}
```
