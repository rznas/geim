<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.OverlapCapsule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point0 | The center of the sphere at the `start` of the capsule. |
| point1 | The center of the sphere at the `end` of the capsule. |
| radius | The radius of the capsule. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a capsule. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**Collider[]** Colliders touching or inside the capsule.

### Description

Check the given capsule against the physics world and return all overlapping colliders.
