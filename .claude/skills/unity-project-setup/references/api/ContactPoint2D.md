<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactPoint2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Details about a specific point of contact involved in a 2D physics collision.

A contact point describes a point of intersection between two Collider2D. ContactPoint2D can only exist on Collider2D that are not set to be triggers as triggers do not define contact points.

Additional resources: Collider2D.isTrigger, Physics2D.GetContacts, Rigidbody2D.GetContacts, Collider2D.GetContacts and Collision2D.

### Properties

| Property | Description |
| --- | --- |
| bounciness | The effective bounciness used for the ContactPoint2D. |
| collider | The incoming Collider2D involved in the collision with the otherCollider. |
| enabled | Indicates whether the collision response or reaction is enabled or disabled. |
| friction | The effective friction used for the ContactPoint2D. |
| normal | Surface normal at the contact point. |
| normalImpulse | Gets the impulse applied at the contact point along the ContactPoint2D.normal. |
| otherCollider | The other Collider2D involved in the collision with the collider. |
| otherRigidbody | The other Rigidbody2D involved in the collision with the rigidbody. |
| point | The point of contact between the two colliders in world space. |
| relativeVelocity | Gets the relative velocity of the two colliders at the contact point (Read Only). |
| rigidbody | The incoming Rigidbody2D involved in the collision with the otherRigidbody. |
| separation | Gets the distance between the colliders at the contact point. |
| tangentImpulse | Gets the impulse applied at the contact point which is perpendicular to the ContactPoint2D.normal. |
