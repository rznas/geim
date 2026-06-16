<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene.CapsuleCast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point1 | The center of the sphere at the `start` of the capsule. |
| point2 | The center of the sphere at the `end` of the capsule. |
| radius | The radius of the capsule. |
| direction | The direction into which to sweep the capsule. |
| hitInfo | If true is returned, `hitInfo` will contain more information about where the collider was hit. (Additional resources: RaycastHit). |
| maxDistance | The max length of the sweep. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a capsule. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**bool** True when the capsule sweep intersects any collider, otherwise false.

### Description

Casts a capsule against all colliders in this physics scene and returns detailed information on what was hit.

Additional resources: Physics.CapsuleCast.

### Parameters

| Parameter | Description |
| --- | --- |
| point1 | The center of the sphere at the `start` of the capsule. |
| point2 | The center of the sphere at the `end` of the capsule. |
| radius | The radius of the capsule. |
| direction | The direction into which to sweep the capsule. |
| results | The buffer to store the results in. |
| maxDistance | The max length of the sweep. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a capsule. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**int** The amount of hits stored to the `results` buffer.

### Description

Casts a capsule against all colliders in this physics scene and returns detailed information on what was hit.

Additional resources: Physics.CapsuleCastNonAlloc.
