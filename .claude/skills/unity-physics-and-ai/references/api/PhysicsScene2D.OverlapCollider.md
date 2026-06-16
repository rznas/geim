<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene2D.OverlapCollider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask and Z depth. Note that the normal angle is not used for overlap testing. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**ColliderArray2D** A collection of Collider2D containing the results. The collection does not allocate any managed memory but must be disposed of.

### Description

Checks a Collider against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapCollider" is conceptually like looking at the Scene through a Collider shape to determine what can be seen. Any Collider2D seen can be detected and reported.

This function returns a collection of Collider2D in a ColliderArray2D. The collection does not allocate any managed memory but must be disposed of.

The results can also be filtered by the `contactFilter`.

Additional resources: Collider2D.Overlap and Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position at which to overlap the Collider. |
| angle | The angle of at which to overlap the Collider (in degrees). |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask and Z depth. Note that the normal angle is not used for overlap testing. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**ColliderArray2D** A collection of Collider2D containing the results. The collection does not allocate any managed memory but must be disposed of.

### Description

Checks a Collider against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapCollider" is conceptually like looking at the Scene through a Collider shape to determine what can be seen. Any Collider2D seen can be detected and reported.

This function returns a collection of Collider2D in a ColliderArray2D. The collection does not allocate any managed memory but must be disposed of.

The results can also be filtered by the `contactFilter`.

**NOTE**: The `position` and `angle` used here represent the position of the Rigidbody2D the Collider2D is attached to. If the Collider2D is offset from the center of mass then the Collider2D will be overlapped at the same offset. This can be confusing so it is recommened that only Collider2D that align with the center of mass are used. If not then you must take this into account. If the Collider2D is not attached to a Rigidbody2D, this call cannot be used and will result in a warning.

Additional resources: Collider2D.Overlap and Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| results | The list to receive results. |

### Returns

**int** The list to receive results.

### Description

Checks a Collider against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapCollider" is conceptually like looking at the Scene through a Collider shape to determine what can be seen. Any Collider2D seen can be detected and reported.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: Collider2D.Overlap and Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask and Z depth. Note that the normal angle is not used for overlap testing. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Checks a Collider against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapCollider" is conceptually like looking at the Scene through a Collider shape to determine what can be seen. Any Collider2D seen can be detected and reported.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

Additional resources: Collider2D.Overlap and Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position at which to overlap the Collider. |
| angle | The angle of at which to overlap the Collider (in degrees). |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| results | The list to receive results. |

### Returns

**int** The list to receive results.

### Description

Checks a Collider against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapCollider" is conceptually like looking at the Scene through a Collider shape to determine what can be seen. Any Collider2D seen can be detected and reported.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

**NOTE**: The `position` and `angle` used here represent the position of the Rigidbody2D the Collider2D is attached to. If the Collider2D is offset from the center of mass then the Collider2D will be overlapped at the same offset. This can be confusing so it is recommened that only Collider2D that align with the center of mass are used. If not then you must take this into account. If the Collider2D is not attached to a Rigidbody2D, this call cannot be used and will result in a warning.

Additional resources: Collider2D.Overlap and Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position at which to overlap the Collider. |
| angle | The angle of at which to overlap the Collider (in degrees). |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask and Z depth. Note that the normal angle is not used for overlap testing. |
| results | The list to receive results. |

### Returns

**int** The list to receive results.

### Description

Checks a Collider against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapCollider" is conceptually like looking at the Scene through a Collider shape to determine what can be seen. Any Collider2D seen can be detected and reported.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

**NOTE**: The `position` and `angle` used here represent the position of the Rigidbody2D the Collider2D is attached to. If the Collider2D is offset from the center of mass then the Collider2D will be overlapped at the same offset. This can be confusing so it is recommened that only Collider2D that align with the center of mass are used. If not then you must take this into account. If the Collider2D is not attached to a Rigidbody2D, this call cannot be used and will result in a warning.

Additional resources: Collider2D.Overlap and Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask and Z depth. Note that the normal angle is not used for overlap testing. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Checks a Collider against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapCollider" is conceptually like looking at the Scene through a Collider shape to determine what can be seen. Any Collider2D seen can be detected and reported.

The integer return value is the number of objects that intersect the box (possibly zero) but the results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved. Note that you will always get zero results if you pass an empty array.

Additional resources: Collider2D.Overlap and Rigidbody2D.Overlap.

### Parameters

| Parameter | Description |
| --- | --- |
| collider | The Collider that defines the area used to query for other Collider overlaps. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |
| layerMask | Filter to check objects only on specific layers. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Checks a Collider against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapCollider" is conceptually like looking at the Scene through a Collider shape to determine what can be seen. Any Collider2D seen can be detected and reported.

The integer return value is the number of objects that intersect the box (possibly zero) but the results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved. Note that you will always get zero results if you pass an empty array.

The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example). Overloads of this method that use `contactFilter` can filter the results by the options available in ContactFilter2D.

Additional resources: Collider2D.Overlap, Rigidbody2D.Overlap and LayerMask.
