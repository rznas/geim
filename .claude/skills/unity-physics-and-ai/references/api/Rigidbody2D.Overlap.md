<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.Overlap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to overlap the Rigidbody at. |
| angle | The angle to overlap the Rigidbody at. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Get a list of all Colliders that overlap all Colliders attached to this Rigidbody2D.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: Physics2D.OverlapCollider, Collider2D.Overlap and Rigidbody2D.GetAttachedColliders.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to overlapping the Rigidbody at. |
| angle | The angle to overlap the Rigidbody at. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Get a list of all Colliders that overlap all Colliders attached to this Rigidbody2D.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: Physics2D.OverlapCollider, Collider2D.Overlap and Rigidbody2D.GetAttachedColliders.

### Parameters

| Parameter | Description |
| --- | --- |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Get a list of all Colliders that overlap all Colliders attached to this Rigidbody2D.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: Physics2D.OverlapCollider, Collider2D.Overlap and Rigidbody2D.GetAttachedColliders.

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Get a list of all Colliders that overlap all Colliders attached to this Rigidbody2D filtered by the `contactFilter`.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: Physics2D.OverlapCollider, Collider2D.Overlap and Rigidbody2D.GetAttachedColliders.

### Parameters

| Parameter | Description |
| --- | --- |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Get a list of all Colliders that overlap all Colliders attached to this Rigidbody2D filtered by the `contactFilter`.

The integer return value is the number of Colliders that overlap the `collider` and which could be stored in the supplied array given its length. The results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved when the check is performed frequently.

Additional resources: Physics2D.OverlapCollider, Collider2D.Overlap and Rigidbody2D.GetAttachedColliders.
