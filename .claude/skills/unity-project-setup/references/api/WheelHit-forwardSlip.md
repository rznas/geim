<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WheelHit-forwardSlip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Tire slip in the rolling direction. Acceleration slip is negative, braking slip is positive.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints "braking slip!" when tire slips badly.
    void FixedUpdate()
    {
        WheelHit hit = new WheelHit();
        WheelCollider wheel = GetComponent<WheelCollider>();
        if (wheel.GetGroundHit(out hit))
        {
            if (hit.forwardSlip > 0.5)
                print("braking slip!");
        }
    }
}
```
