<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.GetAccumulatedTorque.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| step | The timestep of the next physics simulation. |

### Returns

**Vector3** Accumulated torque expressed in ForceMode.Force.

### Description

Returns the torque that the Rigidbody has accumulated before the simulation step.

The accumulated torque is reset during each physics simulation step.

```csharp
using UnityEngine;public class AddTorqueScript : MonoBehaviour
{
    private Rigidbody rigidbody;    void Start()
    {
        rigidbody = GetComponent<Rigidbody>();
        rigidbody.useGravity = false;
    }    private void FixedUpdate()
    {
        rigidbody.AddTorque(Vector3.right * 10f, ForceMode.Impulse);
        var accumulatedTorque = rigidbody.GetAccumulatedTorque();
        rigidbody.AddTorque(accumulatedTorque * -1f, ForceMode.Force);
    }
}
```

In this example, the angular velocity of the Rigidbody is 0.
