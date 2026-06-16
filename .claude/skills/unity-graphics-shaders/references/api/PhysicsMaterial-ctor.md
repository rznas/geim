<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsMaterial-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a new material.

Note that although this function lets you create a new physics material from a script, it is generally easier to create and assign the material from the editor.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Collider coll;    void Start()
    {
        coll = GetComponent<Collider>();        PhysicsMaterial material = new PhysicsMaterial();
        material.dynamicFriction = 1;
        coll.material = material;
    }
}
```

### Description

Creates a new material named `name`.
