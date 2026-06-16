<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ArticulationBody.GetRelativePointVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The velocity relative to the articulation body at the point `relativePoint`.

Gets the velocity relative to the articulation body at the specified `relativePoint`.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public ArticulationBody ab;    void Start()
    {
        ab = GetComponent<ArticulationBody>();
    }    // Get the velocity of a wheel, specified by its position in local space.
    // This method assumes that the wheel is a child of the ArticulationBody, or that the wheel translates relative to the ArticulationBody.
    Vector3 CalcWheelVelocity(Vector3 localWheelPos)
    {
        return ab.GetRelativePointVelocity(localWheelPos);
    }
}
```
