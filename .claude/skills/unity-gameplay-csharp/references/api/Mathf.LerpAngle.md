<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.LerpAngle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| a | The start angle. A float expressed in degrees. |
| b | The end angle. A float expressed in degrees. |
| t | The interpolation value between the start and end angles. This value is clamped to the range [0, 1]. |

### Returns

**float** Returns the interpolated float result between angle `a` and angle `b`, based on the interpolation value `t`.

### Description

Same as Lerp but makes sure the values interpolate correctly when they wrap around 360 degrees.

This method returns the shortest path between the specified angles. This method wraps around values that are outside the range [-180, 180]. For example, LerpAngle(1.0f, 190.0f, 1.0f) returns -170.0f. To find the longest path use Lerp.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    float minAngle = 0.0f;
    float maxAngle = 90.0f;    void Update()
    {
        float angle = Mathf.LerpAngle(minAngle, maxAngle, Time.time);
        transform.eulerAngles = new Vector3(0, angle, 0);
    }
}
```

Additional resources: Lerp.
