<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.CancelInvoke.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Cancels all Invoke calls on this MonoBehaviour.

```csharp
using UnityEngine;
using System.Collections.Generic;public class ExampleScript : MonoBehaviour
{
    public GameObject projectile;    void Start()
    {
        // Starting in 2 seconds, a projectile will be launched every 0.3 seconds
        InvokeRepeating(nameof(LaunchProjectile), 2, 0.3F);
    }    void LaunchProjectile()
    {
        // Create a projectile GameObject and set its velocity to a random direction
        GameObject instance = Instantiate(projectile);
        Rigidbody rigidbody = instance.GetComponent<Rigidbody>();        rigidbody.velocity = Random.insideUnitSphere * 5;
    }    void Update()
    {
        // Cancel all Invoke calls
        if (Input.GetButton("Fire1"))
            CancelInvoke();
    }
}
```

### Description

Cancels all Invoke calls with name `methodName` on this behaviour.

```csharp
using UnityEngine;
using System.Collections.Generic;public class ExampleScript : MonoBehaviour
{
    public GameObject projectile;    void Start()
    {
        // Starting in 2 seconds, a projectile will be launched every 0.3 seconds
        InvokeRepeating(nameof(LaunchProjectile), 2, 0.3F);
    }    void LaunchProjectile()
    {
        // Create a projectile GameObject and set its velocity to a random direction
        GameObject instance = Instantiate(projectile);
        Rigidbody rigidbody = instance.GetComponent<Rigidbody>();        rigidbody.velocity = Random.insideUnitSphere * 5;
    }    void Update()
    {
        // Cancel only the LaunchProjectile invoke
        if (Input.GetButton("Fire1"))
            CancelInvoke(nameof(LaunchProjectile));
    }
}
```
