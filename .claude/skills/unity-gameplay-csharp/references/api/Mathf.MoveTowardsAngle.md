<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.MoveTowardsAngle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Same as MoveTowards but makes sure the values interpolate correctly when they wrap around 360 degrees.

Variables `current` and `target` are assumed to be in degrees. For optimization reasons, negative values of `maxDelta` are not supported and may cause oscillation. To push `current` away from a target angle, add 180 to that angle instead.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    float target = 270.0f;
    float speed = 45.0f;    void Update()
    {
        float angle = Mathf.MoveTowardsAngle(transform.eulerAngles.y, target, speed * Time.deltaTime);
        transform.eulerAngles = new Vector3(0, angle, 0);
    }
}
```
