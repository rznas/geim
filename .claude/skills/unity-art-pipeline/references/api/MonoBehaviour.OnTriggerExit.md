<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnTriggerExit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other collider involved in this collision. |

### Description

OnTriggerExit is called when a collider stops touching a trigger.

`OnTriggerExit` is called during whichever iteration of the physics `FixedUpdate` loop Unity detects that a collider is no longer touching a trigger it was previously touching.

Both GameObjects must contain a Collider component. At least one of the colliders must be a trigger collider and at least one must be a physics body collider. For more information, refer to OnTrigger events.

Trigger events are sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions. Deactivating or destroying a collider while it is inside a trigger volume does not cause an `OnTriggerExit` message to be sent.

Both the trigger and the collider that touches the trigger receive `OnTriggerEnter` if they have implemented it.

`OnTriggerExit` can be a coroutine.

```csharp
// Destroy everything that leaves the triggerusing UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnTriggerExit(Collider other)
    {
        Destroy(other.gameObject);
    }
}
```
