<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.GetAttachedColliders.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| results | An array of Collider2D used to receive the results. |
| findTriggers | Whether Collider2D that are triggers should be returned or not. |

### Returns

**int** Returns the number of Collider2D placed in the `results` array.

### Description

Returns all Collider2D that are attached to this Rigidbody2D.

Calculates all Collider2D that are attached to this Rigidbody2D and returns them in the `results` array.

When retrieving colliders, you should ensure that the provided array is large enough to contain all the colliders you are interested in. Typically the array would be reused therefore it would be a size to return a reasonable quantity of colliders. This function also means that no allocations occur which means no work is produced for the garbage collector.

Additional resources: Rigidbody2D.attachedColliderCount.

### Parameters

| Parameter | Description |
| --- | --- |
| results | A list of Collider2D used to receive the results. |
| findTriggers | Whether Collider2D that are triggers should be returned or not. |

### Returns

**int** Returns the number of Collider2D placed in the `results` list.

### Description

Returns all Collider2D that are attached to this Rigidbody2D.

Calculates all Collider2D that are attached to this Rigidbody2D and returns them in the `results` list.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: Rigidbody2D.attachedColliderCount.
