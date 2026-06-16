<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.CapsuleCastNonAlloc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point1 | The center of the sphere at the `start` of the capsule. |
| point2 | The center of the sphere at the `end` of the capsule. |
| radius | The radius of the capsule. |
| direction | The direction into which to sweep the capsule. |
| results | The buffer to store the hits into. |
| maxDistance | The max length of the sweep. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a capsule. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**int** The amount of hits stored into the buffer.

### Description

Casts a capsule against all colliders in the Scene and returns detailed information on what was hit into the buffer.

Like Physics.CapsuleCastAll, but generates no garbage.
