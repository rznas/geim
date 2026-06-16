<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.BoxCastNonAlloc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

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

Cast the box along the direction, and store hits in the provided buffer.
