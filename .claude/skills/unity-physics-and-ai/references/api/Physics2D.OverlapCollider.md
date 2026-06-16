<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.OverlapCollider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**ColliderArray2D** A collection of Collider2D containing the results. The collection does not allocate any managed memory but must be disposed of.

### Description

Gets a list of all Colliders that overlap the given `Collider`.

This function returns a collection of Collider2D in a ColliderArray2D. The collection does not allocate any managed memory but must be disposed of.

The results can also be filtered by the `contactFilter`.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position at which to overlap the Collider. |
| angle | The angle of at which to overlap the Collider (in degrees). |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**ColliderArray2D** A collection of Collider2D containing the results. The collection does not allocate any managed memory but must be disposed of.

### Description

Gets a list of all Colliders that overlap the given `Collider`.

This function returns a collection of Collider2D in a ColliderArray2D. The collection does not allocate any managed memory but must be disposed of.

The results can also be filtered by the `contactFilter`.

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Gets a list of all Colliders that overlap the given `Collider`.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: Collider2D.Overlap and Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Gets a list of all Colliders that overlap the given `Collider`.

The integer return value is the number of Colliders that overlap the `Collider` and which could be stored in the supplied array given its length. The results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved when the check is performed frequently.

Additional resources: Collider2D.Overlap and Rigidbody2D.Overlap.
