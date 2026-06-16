<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider-material.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The material used by the collider.

If material is shared by colliders, it will duplicate the material and assign it to the collider.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Expose properties in the inspector for easy adjustment.
    float dynFriction;
    float statFriction;    Collider coll;    void Start()
    {
        coll = GetComponent<Collider>();        coll.material.dynamicFriction = dynFriction;
        coll.material.staticFriction = statFriction;
    }
}
```
