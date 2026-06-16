<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision-thisArticulationBody.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ArticulationBody of the collider of the GameObject which received the Collision event (Read Only).

The ArticulationBody of the collider of the GameObject which received the Collision event. If there is no articulation body attached, this returns `null`.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
// Make all articulation bodies that your GameObject hits move to the left```
    void OnCollisionStay(Collision collision)
    {
        // Check if the collider your GameObject hits has an articulation body
        // Then apply the force
        if (collision.thisArticulationBody)
        {
            collision.thisArticulationBody.AddForce(Vector3.left * 15);
        }
    }
}
```
