<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene.SphereCast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The center of the sphere at the start of the sweep. |
| radius | The radius of the sphere. |
| direction | The direction into which to sweep the sphere. |
| hitInfo | If true is returned, `hitInfo` will contain more information about where the collider was hit. (Additional resources: RaycastHit). |
| maxDistance | The max length of the cast. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a sphere. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**bool** True when the sphere sweep intersects any collider, otherwise false.

### Description

Casts a sphere along a ray and returns detailed information on what was hit.

Additional resources: Physics.SphereCast.

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The center of the sphere at the start of the sweep. |
| radius | The radius of the sphere. |
| direction | The direction into which to sweep the sphere. |
| results | The buffer to save the results to. |
| maxDistance | The max length of the cast. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a sphere. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**int** The amount of hits stored to the `results` buffer.

### Description

Cast sphere along the direction and store the results into buffer.

Additional resources: Physics.SphereCastNonAllloc.
