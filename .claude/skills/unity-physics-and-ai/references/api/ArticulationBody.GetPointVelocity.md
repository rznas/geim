<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetPointVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the velocity of the articulation body at the specified `worldPoint` in global space.

GetPointVelocity takes the angularVelocity of the articulation body into account when calculating the velocity.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public ArticulationBody ab;    void Start()
    {
        ab = GetComponent<ArticulationBody>();
    }    // Get the velocity of a wheel, specified by its position in local space.
    Vector3 CalcWheelVelocity(Vector3 localWheelPos)
    {
        return ab.GetPointVelocity(transform.TransformPoint(localWheelPos));
    }
}
```
