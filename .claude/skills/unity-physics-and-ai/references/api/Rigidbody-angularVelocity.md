<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-angularVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The angular velocity vector of the rigidbody measured in radians per second.

In most cases you should not modify it directly, as this can result in unrealistic behaviour. Note that if the Rigidbody has rotational constraints set, the corresponding angular velocity components are set to zero in the mass space (ie relative to the inertia tensor rotation) at the time of the call. Additionally, setting the angular velocity of a kinematic rigidbody is not allowed and will have no effect.

```csharp
using UnityEngine;
using UnityEngine.InputSystem;// The angular velocity around the y-axis is 2 radians per second.
// If the GameObject starts facing forward, it will complete about 1 full rotation every 3.14 seconds.
public class ExampleClass : MonoBehaviour
{
    public Rigidbody rb;
    public float spinSpeed = 2f;    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    void Update()
    {
        if (Keyboard.current.spaceKey.wasPressedThisFrame)
        {
            // Start spinning around y-axis
            rb.angularVelocity = new Vector3(0, spinSpeed, 0);
        }
    }
}
```
