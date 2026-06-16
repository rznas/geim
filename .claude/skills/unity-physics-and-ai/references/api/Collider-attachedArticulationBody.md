<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider-attachedArticulationBody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The articulation body the collider is attached to.

Returns null if the collider is attached to no articulation body.

 Colliders are automatically connected to the articulation body attached to the same game object or attached to any parent game object.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Lift the articulation body attached to the collider.
        GetComponent<Collider>().attachedArticulationBody.AddForce(Vector3.up);
    }
}
```
