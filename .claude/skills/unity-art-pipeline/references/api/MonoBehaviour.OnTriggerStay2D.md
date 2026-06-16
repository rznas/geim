<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnTriggerStay2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other Collider2D involved in this collision. |

### Description

Sent once per physics update when another object is within a trigger collider attached to this object (2D physics only).

Further information about the other collider is reported in the Collider2D parameter passed during the call.

**Note:** Trigger events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.

Additional resources: Collider2D class, OnTriggerEnter2D, OnTriggerExit2D.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnTriggerStay2D(Collider2D other)
    {
        other.attachedRigidbody.AddForce(-0.1F * other.attachedRigidbody.linearVelocity);
    }
}
```
