<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody.AddForceAtPosition.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| force | Force vector in world coordinates. |
| position | Position in world coordinates. |

### Description

Applies `force` at `position`. As a result this will apply a torque and force on the object.

For realistic effects `position` should be approximately in the range of the surface of the rigidbody. This is most commonly used for explosions. When applying explosions it is best to apply forces over several frames instead of just one. Note that when `position` is far away from the center of the rigidbody the applied torque will be unrealistically large.

Force can be applied only to an active rigidbody. If a GameObject is inactive, AddForceAtPosition has no effect.

Wakes up the Rigidbody by default. If the force size is zero then the Rigidbody will not be woken up.

For more information on how ForceMode affects velocity, see Rigidbody.AddForce.

Additional resources: AddForce, AddRelativeForce, AddTorque.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void ApplyForce(Rigidbody body)
    {
        Vector3 direction = body.transform.position - transform.position;
        body.AddForceAtPosition(direction.normalized, transform.position);
    }
}
```
