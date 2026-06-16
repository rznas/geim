<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.SphereCastAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The center of the sphere at the start of the sweep. |
| radius | The radius of the sphere. |
| direction | The direction in which to sweep the sphere. |
| maxDistance | The max length of the sweep. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a sphere. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**RaycastHit[]** An array of all colliders hit in the sweep.

### Description

Like Physics.SphereCast, but this function will return all hits the sphere sweep intersects.

Casts a sphere against all colliders in the Scene and returns detailed information on each collider which was hit. This is useful when a Raycast does not give enough precision, because you want to find out if an object of a specific size, such as a character, will be able to move somewhere without colliding with anything on the way.

**Notes:** For colliders that overlap the sphere at the start of the sweep, RaycastHit.normal is set opposite to the direction of the sweep, RaycastHit.distance is set to zero, and the zero vector gets returned in RaycastHit.point. You might want to check whether this is the case in your particular query and perform additional queries to refine the result. Passing a zero radius results in undefined output and doesn't always behave the same as Physics.Raycast.

Additional resources: Physics.SphereCast, Physics.CapsuleCast, Physics.Raycast, Rigidbody.SweepTest.

### Parameters

| Parameter | Description |
| --- | --- |
| ray | The starting point and direction of the ray into which the sphere sweep is cast. |
| radius | The radius of the sphere. |
| maxDistance | The max length of the sweep. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a sphere. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Description

Like Physics.SphereCast, but this function will return all hits the sphere sweep intersects.
