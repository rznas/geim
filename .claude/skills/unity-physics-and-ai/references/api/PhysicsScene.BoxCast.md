<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene.BoxCast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | Center of the box. |
| halfExtents | Half the size of the box in each dimension. |
| direction | The direction in which to cast the box. |
| hitInfo | If true is returned, `hitInfo` will contain more information about where the collider was hit. (Additional resources: RaycastHit). |
| orientation | Rotation of the box. |
| maxDistance | The max length of the cast. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a box. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**bool** True, if any intersections were found.

### Description

Casts the box along a ray and returns detailed information on what was hit.

Additional resources: Physics.BoxCast.

### Parameters

| Parameter | Description |
| --- | --- |
| center | Center of the box. |
| halfExtents | Half the size of the box in each dimension. |
| direction | The direction in which to cast the box. |
| results | The buffer to store the results in. |
| orientation | Rotation of the box. |
| maxDistance | The max length of the cast. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a box. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**int** The amount of hits stored to the `results` buffer.

### Description

Casts the box along a ray and returns detailed information on what was hit.

Additional resources: Physics.BoxCastNonAlloc.
