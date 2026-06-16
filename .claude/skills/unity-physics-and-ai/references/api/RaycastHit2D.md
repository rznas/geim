<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns information about 2D Colliders detected by a 2D physics query in the scene.

The RaycastHit2D struct is used to return results from many 2D physics queries. It contains many pieces of information about a detection result including the Collider2D detected along with extra detail such as the contact point, the distance traversed to that contact point, the contact normal at that contact point etc.

When using any physics query that returns a RaycastHit2D, you should always first check to see if it contains a valid result which indicates that a hit (intersection) was detected. You can do this by checking if the RaycastHit2D is `true` or `false` (see code examples). Also, when the result is invalid, all the RaycastHit2D fields will be at their default.

**NOTE**: This type is also used by the following physics queries:

Additional resources: Physics2D.Raycast, Physics2D.Linecast, Physics2D.BoxCast, Physics2D.CapsuleCast, Physics2D.CircleCast, Physics2D.GetRayIntersection, Collider2D.Cast, Rigidbody2D.Cast, PhysicsScene2D.Raycast, PhysicsScene2D.Linecast, PhysicsScene2D.BoxCast, PhysicsScene2D.CapsuleCast, PhysicsScene2D.CircleCast and PhysicsScene2D.GetRayIntersection.

### Properties

| Property | Description |
| --- | --- |
| centroid | The world space centroid (center) of the physics query shape when it intersects. |
| collider | The Collider2D detected by the physics query. |
| distance | The distance the physics query traversed before it detected a Collider2D. |
| fraction | The fraction of the distance specified to the physics query before it detected a Collider2D. |
| normal | The surface normal of the detected Collider2D. |
| point | The world space position where the physics query shape intersected with the detected Collider2D surface. |
| rigidbody | The Rigidbody2D that the Collider2D detected by the physics query is attached to. |
| transform | The Transform on the GameObject that the Collider2D is attached to. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Implicit operator used to return a true or false result indicating if the result is valid or not. |
