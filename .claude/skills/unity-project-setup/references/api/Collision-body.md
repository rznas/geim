<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision-body.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Rigidbody or ArticulationBody of the collider that your Component collides with (Read Only).

This returns the Rigidbody or ArticulationBody of the collider that your Component collides with. If the collider doesn't have a rigid or articulation body attached, this returns `null`.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Print out which type of Component is attached to the collider we hit
    void OnCollisionStay(Collision collision)
    {
        // Check if the collider your GameObject hits has a rigidbody
        if (collision.body as Rigidbody)
        {
            Debug.Log("Has Rigidbody.");
        }        // Check if the collider your GameObject hits has an articulation body
        if (collision.body as ArticulationBody)
        {
            Debug.Log("Has ArticulationBody.");
        }
    }
}
```
