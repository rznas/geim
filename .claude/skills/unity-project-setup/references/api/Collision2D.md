<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collision2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Collision details returned by 2D physics callback functions.

The collisions details are returned by MonoBehaviour.OnCollisionEnter2D, MonoBehaviour.OnCollisionStay2D and MonoBehaviour.OnCollisionExit2D callbacks. It details which Collider2D and Rigidbody2D pairs are involved in the collision as well as contact points where the Collider2D meet. **Note:** During the `OnCollisionExit2D` event, there are no contacts to be retrieved.

### Properties

| Property | Description |
| --- | --- |
| collider | The incoming Collider2D involved in the collision with the otherCollider. |
| contactCount | Gets the number of contacts for this collision. |
| contacts | The specific points of contact with the incoming Collider2D. You should avoid using this as it produces memory garbage. Use GetContact or GetContacts instead. |
| enabled | Indicates whether the collision response or reaction is enabled or disabled. |
| gameObject | The incoming GameObject involved in the collision. |
| otherCollider | The other Collider2D involved in the collision with the collider. |
| otherRigidbody | The other Rigidbody2D involved in the collision with the rigidbody. |
| relativeVelocity | The relative linear velocity of the two colliding objects (Read Only). |
| rigidbody | The incoming Rigidbody2D involved in the collision with the otherRigidbody. |
| transform | The Transform of the incoming object involved in the collision. |

### Public Methods

| Method | Description |
| --- | --- |
| GetContact | Gets the contact point at the specified index. |
| GetContacts | Retrieves all contact points for contacts between collider and otherCollider. |
