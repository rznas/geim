<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision-articulationBody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ArticulationBody of the collider that your GameObject collides with (Read Only).

This returns the ArticulationBody of the collider that your GameObject collides with. If the collider doesn't have an articulation body attached, this returns `null`.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Make all articulation bodies that your GameObject hits fly upwards
    void OnCollisionStay(Collision collision)
    {
        // Check if the collider your GameObject hits has an articulation body
        // Then apply the force
        if (collision.articulationBody)
        {
            collision.articulationBody.AddForce(Vector3.up * 15);
        }
    }
}
```
