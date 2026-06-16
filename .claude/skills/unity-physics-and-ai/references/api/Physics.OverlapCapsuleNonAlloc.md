<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.OverlapCapsuleNonAlloc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point0 | The center of the sphere at the `start` of the capsule. |
| point1 | The center of the sphere at the `end` of the capsule. |
| radius | The radius of the capsule. |
| results | The buffer to store the results into. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a capsule. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**int** The amount of entries written to the buffer.

### Description

Check the given capsule against the physics world and return all overlapping colliders in the user-provided buffer.

Same as Physics.OverlapCapsule but does not allocate anything on the managed heap.
