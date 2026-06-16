<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.GetRelativePointVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The velocity relative to the rigidbody at the point `relativePoint`.

GetRelativePointVelocity will take the angularVelocity of the rigidbody into account when calculating the velocity.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    // Get the velocity of a wheel, specified by its position in local space.
    // This method assumes that the wheel is a child of the Rigidbody, or that the wheel translates relative to the Rigidbody. 
    Vector3 CalcWheelVelocity(Vector3 localWheelPos)
    {
        return rb.GetRelativePointVelocity(localWheelPos);
    }
}
```
