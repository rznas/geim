<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision-angularVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The angular velocity of the Rigidbody or ArticulationBody that belong to the collider that your Component collides with (Read Only).

The angular velocity of the Rigidbody or ArticulationBody that belong to the collider that your Component collides with. The returned velocity is the one recorded at the moment of collision rather than the current velocity. If the collider doesn't have a Rigidbody or ArticulationBody attached, this returns Vector3.zero.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnCollisionEnter(Collision collision)
    {
        // Print the angular velocity of the body we've collided with.
		Debug.Log($"Collided with: {(collision.body ?? collision.collider).gameObject.name}, angular velocity at collision time {collision.angularVelocity}.");
    }
}
```
