<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gyroscope-userAcceleration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the acceleration that the user is giving to the device.

The significance of this value is that the effect of gravity (which is also detected by the accelerometer) has been removed to leave just the acceleration from the user's movements.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Vector3 forceVec;
    Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    void FixedUpdate()
    {
        // Apply forces to an object to match the side-to-side acceleration
        // the user is giving to the device.
        rb.AddForce(Input.gyro.userAcceleration.x * forceVec);
    }
}
```
