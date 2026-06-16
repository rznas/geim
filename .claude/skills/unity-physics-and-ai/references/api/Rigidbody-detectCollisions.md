<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-detectCollisions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should collision detection be enabled? (By default always enabled).

Disabling collision detections is useful when you have a ragdoll which is setup to be kinematic and you want to avoid heavy collision detection calculations on that rigidbody. `detectCollisions` is not serialized. This means it doesn't show up in the Inspector and when Instantiating the rigidbody or saving it in a Scene, it will not be saved.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }    // Let the rigidbody take control and detect collisions.
    void EnableRagdoll()
    {
        rb.isKinematic = false;
        rb.detectCollisions = true;
    }    // Let animation control the rigidbody and ignore collisions.
    void DisableRagdoll()
    {
        rb.isKinematic = true;
        rb.detectCollisions = false;
    }
}
```
