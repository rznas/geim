<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics-defaultMaxDepenetrationVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum default velocity needed to move a Rigidbody's collider out of another collider's surface penetration. Must be positive.

This value is usually changed in `Edit->Project Settings->Physics->Settings->Game Object` inspector instead of from scripts.

**Note:** Very large values can introduce instability during collision detection; too small values might cause the collider depenetration to fail.

You can also set a maximum depenetration velocity for individual Rigidbodies via Rigidbody.maxDepenetrationVelocity.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // By default defaultMaxDepenetrationVelocity has a value of 10.0f
        Physics.defaultMaxDepenetrationVelocity = 5.0f;
    }
}
```
