<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.BoxCastAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | Center of the box. |
| halfExtents | Half the size of the box in each dimension. |
| direction | The direction in which to cast the box. |
| orientation | Rotation of the box. |
| maxDistance | The max length of the cast. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a box. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**RaycastHit[]** All colliders that were hit.

### Description

Like Physics.BoxCast, but returns all hits.

**Notes:** For colliders that overlap the box at the start of the sweep, RaycastHit.normal is set opposite to the direction of the sweep, RaycastHit.distance is set to zero, and the zero vector gets returned in RaycastHit.point. You might want to check whether this is the case in your particular query and perform additional queries to refine the result.
