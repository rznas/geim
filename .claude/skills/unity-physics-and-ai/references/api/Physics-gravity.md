<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics-gravity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The gravity applied to all rigid bodies in the Scene.

Gravity can be turned off for an individual rigidbody using its Rigidbody.useGravity property.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Example()
    {
        Physics.gravity = new Vector3(0, -1.0F, 0);
    }
}
```

ParticleSystem.gravityModifiers is Obsolete.
