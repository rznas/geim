<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider.OnTriggerExit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other Collider involved in this collision. |

### Description

OnTriggerExit is called when the Collider `other` has stopped touching the trigger.

This message is sent to the trigger and the Collider that touches the trigger.

**Notes:** Trigger events are only sent if one of the Colliders also has a Rigidbody attached. Trigger events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions. OnTriggerExit occurs on the FixedUpdate after the Colliders have stopped touching. The Colliders involved are not guaranteed to be at the point of initial separation. Deactivating or destroying a Collider while it is inside a trigger volume will not register an on exit event.

Additional resources: Collider.OnTriggerEnter which contains a useful example.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnTriggerExit(Collider other)
    {
        // Destroy everything that leaves the trigger
        Destroy(other.gameObject);
    }
}
```
