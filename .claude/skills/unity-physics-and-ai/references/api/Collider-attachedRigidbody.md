<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider-attachedRigidbody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rigidbody the collider is attached to.

Returns null if the collider is attached to no rigidbody.

Colliders are automatically connected to the rigidbody attached to the same game object or attached to any parent game object.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Lift the rigidbody attached to the collider.
        GetComponent<Collider>().attachedRigidbody.AddForce(0, 1, 0);
    }
}
```
