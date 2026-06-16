<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.Cast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction to cast the Collider. |
| contactFilter | Filter results defined by the contact filter. |
| distance | Maximum distance over which to cast the Collider. |
| ignoreSiblingColliders | Determines whether the cast should ignore other Colliders attached to the same Rigidbody2D (known as sibling colliders). |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<RaycastHit2D>** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

Casts the Collider shape into the Scene starting at the Collider position ignoring the Collider itself.

This function will take the Collider shape and cast it into the Scene starting at the Collider position in the specified `direction` for an optional `distance`.

The `contactFilter` parameter can filter the returned results by the options in ContactFilter2D.

Additionally, this also detects other Collider(s) at the Collider start position if they are overlapping. In this case, the cast shape will start inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated, in which case the returned collision normal is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to start casting the Collider from. |
| angle | The rotation of the Collider (in degrees).. |
| direction | Vector representing the direction to cast the Collider. |
| contactFilter | Filter results defined by the contact filter. |
| distance | Maximum distance over which to cast the Collider. |
| ignoreSiblingColliders | Determines whether the cast should ignore other Colliders attached to the same Rigidbody2D (known as sibling colliders). |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<RaycastHit2D>** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

Casts the Collider shape into the Scene starting at the specified position and rotation.

This function will take the Collider shape and cast it into the Scene starting at the specified `position` and `angle` for an optional `distance`.

The `contactFilter` parameter can filter the returned results by the options in ContactFilter2D.

Additionally, this also detects other Collider(s) at the Collider start position if they are overlapping. In this case, the cast shape will start inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated, in which case the returned collision normal is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

**NOTE**: The `position` and `angle` used here represent the position of the Rigidbody2D the Collider2D is attached to. If the Collider2D is offset from the center of mass then the Collider2D will be overlapped at the same offset. This can be confusing so it is recommened that only Collider2D that align with the center of mass are used. If not then you must take this into account. If the Collider2D is not attached to a Rigidbody2D, this call cannot be used and will result in a warning.

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction to cast the shape. |
| contactFilter | Filter results defined by the contact filter. |
| results | List to receive results. |
| distance | Maximum distance over which to cast the shape. |
| ignoreSiblingColliders | Determines whether the cast should ignore Colliders attached to the same Rigidbody2D (known as sibling Colliders). |

### Returns

**int** The number of results returned.

### Description

Casts the Collider shape into the Scene starting at the Collider position ignoring the Collider itself.

This function will take the Collider shape and cast it into the Scene starting at the Collider position in the specified `direction` for an optional `distance` and return the results in the provided `results` list. The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when casts are performed frequently.

The `contactFilter` parameter can filter the returned results by the options in ContactFilter2D.

Additionally, this also detects other Collider(s) at the Collider start position if they are overlapping. In this case, the cast shape will start inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated, in which case the returned collision normal is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to start casting the Collider from. |
| angle | The rotation of the Collider (in degrees).. |
| direction | Vector representing the direction to cast the Collider. |
| results | List to receive results. |
| distance | Maximum distance over which to cast the Collider. |
| ignoreSiblingColliders | Determines whether the cast should ignore other Colliders attached to the same Rigidbody2D (known as sibling colliders). |

### Returns

**int** The number of results returned.

### Description

Casts the Collider shape into the Scene starting at the specified position and rotation.

This function will take the Collider shape and cast it into the Scene starting at the specified `position` and `angle` for an optional `distance` and return the results in the provided `results` list.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when casts are performed frequently.

Additionally, this also detects other Collider(s) at the Collider start position if they are overlapping. In this case, the cast shape will start inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated, in which case the returned collision normal is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

**NOTE**: The `position` and `angle` used here represent the position of the Rigidbody2D the Collider2D is attached to. If the Collider2D is offset from the center of mass then the Collider2D will be overlapped at the same offset. This can be confusing so it is recommened that only Collider2D that align with the center of mass are used. If not then you must take this into account. If the Collider2D is not attached to a Rigidbody2D, this call cannot be used and will result in a warning.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to start casting the Collider from. |
| angle | The rotation of the Collider (in degrees).. |
| direction | Vector representing the direction to cast the Collider. |
| contactFilter | Filter results defined by the contact filter. |
| results | List to receive results. |
| distance | Maximum distance over which to cast the Collider. |
| ignoreSiblingColliders | Determines whether the cast should ignore other Colliders attached to the same Rigidbody2D (known as sibling colliders). |

### Returns

**int** The number of results returned.

### Description

Casts the Collider shape into the Scene starting at the specified position and rotation.

This function will take the Collider shape and cast it into the Scene starting at the specified `position` and `angle` for an optional `distance` and return the results in the provided `results` list.

The `contactFilter` parameter can filter the returned results by the options in ContactFilter2D.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when casts are performed frequently.

Additionally, this also detects other Collider(s) at the Collider start position if they are overlapping. In this case, the cast shape will start inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated, in which case the returned collision normal is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

**NOTE**: The `position` and `angle` used here represent the position of the Rigidbody2D the Collider2D is attached to. If the Collider2D is offset from the center of mass then the Collider2D will be overlapped at the same offset. This can be confusing so it is recommened that only Collider2D that align with the center of mass are used. If not then you must take this into account. If the Collider2D is not attached to a Rigidbody2D, this call cannot be used and will result in a warning.

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction to cast the shape. |
| contactFilter | Filter results defined by the contact filter. |
| results | Array to receive results. |
| distance | Maximum distance over which to cast the shape. |
| ignoreSiblingColliders | Determines whether the cast should ignore Colliders attached to the same Rigidbody2D (known as sibling Colliders). |

### Returns

**int** The number of results returned.

### Description

Casts the Collider shape into the Scene starting at the Collider position ignoring the Collider itself.

This function will take the collider shape and cast it into the Scene starting at the collider position in the specified `direction` for an optional `distance` and return the results in the provided `results` array. The integer return value is the number of results written into the `results` array. The results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved when casts are performed frequently.

The `contactFilter` parameter can filter the returned results by the options in ContactFilter2D.

Additionally, this will also detect other Collider(s) at the collider start position if they are overlapping. In this case the cast shape will be starting inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.
