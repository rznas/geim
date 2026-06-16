<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody-mass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The mass of the rigidbody.

Different Rigidbodies with large differences in mass can make the physics simulation unstable.

Higher mass objects push lower mass objects more when colliding. Think of a big truck, hitting a small car.

A common mistake is to assume that heavy objects fall faster than light ones. This is not true as the speed is dependent on gravity and damping.

```csharp
// Expose mass to allow adjustment from
// the inspector.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float mass;
    public Rigidbody rb;    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.mass = mass;
    }
}
```
