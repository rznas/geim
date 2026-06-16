<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.SphereCastNonAlloc.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The center of the sphere at the start of the sweep. |
| radius | The radius of the sphere. |
| direction | The direction in which to sweep the sphere. |
| results | The buffer to save the hits into. |
| maxDistance | The max length of the sweep. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a sphere. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**int** The amount of hits stored into the `results` buffer.

### Description

Cast sphere along the direction and store the results into buffer.

This is variant of Physics.SphereCastAll, but instead of allocating the array with the results of the query, it stores the results into the user-provided array. It will only compute as many hits as fit into the buffer, and store them in no particular order. It's not guaranteed that it will store only the closest hits. Generates no garbage.

### Parameters

| Parameter | Description |
| --- | --- |
| ray | The starting point and direction of the ray into which the sphere sweep is cast. |
| radius | The radius of the sphere. |
| results | The buffer to save the results to. |
| maxDistance | The max length of the sweep. |
| layerMask | A Layer mask that is used to selectively filter which colliders are considered when casting a sphere. |
| queryTriggerInteraction | Specifies whether this query should hit Triggers. |

### Returns

**int** The amount of hits stored into the `results` buffer.

### Description

Cast sphere along the direction and store the results into buffer.
