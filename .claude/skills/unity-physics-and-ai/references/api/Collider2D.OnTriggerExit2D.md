<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.OnTriggerExit2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The other Collider2D involved in this collision. |

### Description

Sent when another object leaves a trigger collider attached to this object (2D physics only).

Further information about the other collider is reported in the Collider2D parameter passed during the call.

Notes: Trigger events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.

Additional resources: Collider2D class, OnTriggerEnter2D, OnTriggerStay2D.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    bool characterInQuicksand;    void OnTriggerExit2D(Collider2D other)
    {
        characterInQuicksand = false;
    }
}
```
