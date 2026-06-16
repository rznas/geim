<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.OnCollisionExit2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The Collision2D data associated with this collision. |

### Description

Sent when a collider on another object stops touching this object's collider (2D physics only).

Further information about the objects involved is reported in the Collision2D parameter passed during the call.

Notes: Collision events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.

Additional resources: Collision2D class, OnCollisionEnter2D, OnCollisionStay2D.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    int bumpCount;
    void OnCollisionExit2D(Collision2D collision)
    {
        if (collision.gameObject.tag == "DodgemCar")
        {
            bumpCount++;
        }
    }
}
```
