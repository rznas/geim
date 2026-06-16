<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider.OnTriggerStay.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other Collider involved in this collision. |

### Description

OnTriggerStay is called *almost* all the frames for every Collider **other** that is touching the trigger. The function is on the physics timer so it won't necessarily run every frame.

This message is sent to the trigger and the collider that touches the trigger. Note that trigger events are only sent if one of the colliders also has a rigidbody attached. Trigger events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.

Additional resources: Collider.OnTriggerEnter which contains a useful example.

```csharp
using UnityEngine;
using System.Collections;
public class ExampleClass : MonoBehaviour
{
    // Applies an upwards force to all rigidbodies that enter the trigger.
    void OnTriggerStay(Collider other)
    {
        if (other.attachedRigidbody)
            other.attachedRigidbody.AddForce(Vector3.up * 10);
    }
}
```
