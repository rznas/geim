<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WheelFrictionCurve-stiffness.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Multiplier for the extremumValue and asymptoteValue values (default 1).

Changes the stiffness of the friction. Setting this to zero will completely disable all friction from the wheel.

Usually you modify `stiffness` to simulate various ground materials (e.g. lower the stiffness when driving on grass). Additional resources: WheelCollider.GetGroundHit.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public WheelCollider wheel;    void Start()
    {
        wheel = GetComponent<WheelCollider>();
    }    // When attached to the WheelCollider, modifies tire friction based on
    // static friction of the ground material.
    void FixedUpdate()
    {
        WheelHit hit;
        if (wheel.GetGroundHit(out hit))
        {
            WheelFrictionCurve fFriction = wheel.forwardFriction;
            fFriction.stiffness = hit.collider.material.staticFriction;
            wheel.forwardFriction = fFriction;
            WheelFrictionCurve sFriction = wheel.sidewaysFriction;
            sFriction.stiffness = hit.collider.material.staticFriction;
            wheel.sidewaysFriction = sFriction;
        }
    }
}
```
