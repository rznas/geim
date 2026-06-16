<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.InvokeRepeating.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| methodName | The name of a method to invoke. |
| time | Time to wait in seconds before the first invocation. |
| repeatRate | Interval in seconds between method invocations. |

### Description

Invokes the specified method after a specified delay, then repeatedly at the specified rate.

To cancel `InvokeRepeating`, use MonoBehaviour.CancelInvoke.

The `time` and `repeatRate` parameters depend on Time.timeScale. For example, a Time.timeScale of 2 effectively halves the real-time values of `time` and `repeatRate`, while a Time.timeScale of 0.5 doubles them. If Time.timeScale is 0, then the `method` is never invoked.

You can't change the value of the `repeatRate` interval while `InvokeRepeating` is running. You must cancel and re-invoke to change it.

```csharp
using UnityEngine;
using System.Collections.Generic;// After an initial 2 second wait, launch a projectile every 0.3 secondspublic class ExampleScript : MonoBehaviour
{
    public Rigidbody projectile;    void Start()
    {
        InvokeRepeating(nameof(LaunchProjectile), 2.0f, 0.3f);
    }    void LaunchProjectile()
    {
        Rigidbody instance = Instantiate(projectile);        instance.velocity = Random.insideUnitSphere * 5;
    }
}
```
