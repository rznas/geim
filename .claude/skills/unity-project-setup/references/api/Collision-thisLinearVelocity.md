<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision-thisLinearVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The linear velocity of the Rigidbody or ArticulationBody belonging to the collider of the Component that received the Collision event (Read Only).

The linear velocity of the Rigidbody or ArticulationBody belonging to the collider of the Component that received the Collision event. The returned velocity is the one recorded at the moment of collision rather than the current one. If the collider doesn't have a rigid or articulation body attached, this returns Vector3.zero.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void OnCollisionEnter(Collision collision)
    {
         // Print the linear velocity of our body during collision.
	 Debug.Log($"Collided with: {(collision.thisBody ?? collision.thisCollider).gameObject.name}, linear velocity at collision time: {collision.thisLinearVelocity}.");
    }
}
```
