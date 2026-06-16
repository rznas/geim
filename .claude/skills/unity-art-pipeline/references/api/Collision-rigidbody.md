<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision-rigidbody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Rigidbody we hit (Read Only). This is `null` if the object we hit is a collider with no rigidbody attached.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Make all rigidbodies we touch fly upwards
    void OnCollisionStay(Collision collision)
    {
        // Check if the collider we hit has a rigidbody
        // Then apply the force
        if (collision.rigidbody)
        {
            collision.rigidbody.AddForce(Vector3.up * 15);
        }
    }
}
```
