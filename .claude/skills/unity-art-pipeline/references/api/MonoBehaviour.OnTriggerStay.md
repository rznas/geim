<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnTriggerStay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other Collider involved in this collision. |

### Description

Called once per physics update for every collider that is touching the trigger.

`OnTriggerStay` is called on every physics update while a collider remains touching the trigger.

Both GameObjects must contain a Collider component. At least one of the colliders must be a trigger collider and at least one must be a physics body collider. For more information, refer to OnTrigger events.

Both the trigger and the collider that touches the trigger receive `OnTriggerEnter` if they have implemented it. Trigger events are sent to disabled MonoBehaviours to allow enabling Behaviours in response to collisions.

```csharp
// Applies an upwards force to all rigidbodies that enter the trigger.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnTriggerStay(Collider other)
    {
        if (other.attachedRigidbody)
        {
            other.attachedRigidbody.AddForce(Vector3.up * 10);
        }
    }
}
```

OnTriggerStay can be a co-routine, simply use the yield statement in the function.
