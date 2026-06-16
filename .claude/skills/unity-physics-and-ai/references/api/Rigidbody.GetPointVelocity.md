<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.GetPointVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The velocity of the rigidbody at the point `worldPoint` in global space.

GetPointVelocity will take the angularVelocity of the rigidbody into account when calculating the velocity.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    // Get the velocity of a wheel, specified by its position in local space.
    Vector3 CalcWheelVelocity(Vector3 localWheelPos)
    {
        return rb.GetPointVelocity(transform.TransformPoint(localWheelPos));
    }
}
```
