<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.IsInvoking.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is any invoke on `methodName` pending?

```csharp
using UnityEngine;
using System.Collections.Generic;// Instantiates a projectile two seconds after the spacebar was pressed.
// LaunchProjectile is called when a previous RigidBody has finished the Invoke.public class ExampleScript : MonoBehaviour
{
    public Rigidbody projectile;    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && !IsInvoking(nameof(LaunchProjectile)))
            Invoke(nameof(LaunchProjectile), 2.0f);
    }    void LaunchProjectile()
    {
        Rigidbody instance = Instantiate(projectile);
        instance.velocity = Random.insideUnitSphere * 5;
    }
}
```

### Description

Is any invoke pending on this MonoBehaviour?
