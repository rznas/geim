<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnCollisionStay2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| other | The Collision2D data associated with this collision. |

### Description

Sent each frame where a collider on another object is touching this object's collider (2D physics only).

Further information about the objects involved is reported in the Collision2D parameter passed during the call. If you don't need this information then you can declare OnCollisionStay2D without the parameter.

**Note:** Collision events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions. Collision stay events are not sent for sleeping Rigidbodies.

Additional resources: Collision2D class, OnCollisionEnter2D, OnCollisionExit2D.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    float rechargeRate = 10.0f;
    float batteryLevel;    void OnCollisionStay2D(Collision2D collision)
    {
        if (collision.gameObject.tag == "RechargePoint")
        {
            batteryLevel = Mathf.Min(batteryLevel + rechargeRate * Time.deltaTime, 100.0f);
        }
    }
}
```
