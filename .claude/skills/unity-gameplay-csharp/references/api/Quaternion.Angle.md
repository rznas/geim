<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.Angle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the angle in degrees between two rotations `a` and `b`. The resulting angle ranges from 0 to 180.

Example: Think of two GameObjects (A and B) moving around a third GameObject (C). Lines from C to A and C to B create a triangle which can change over time. The angle between CA and CB is the value Quaternion.Angle provides.

```csharp
using UnityEngine;
using System.Collections;// Calculates the angle (degrees) between
// the rotation of this transform and target.public class ExampleClass : MonoBehaviour
{
    public Transform target;    void Update()
    {
        float angle = Quaternion.Angle(transform.rotation, target.rotation);
    }
}
```
