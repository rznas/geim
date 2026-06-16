<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.Cast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction to cast each Collider2D shape. |
| results | List to receive results. |
| distance | Maximum distance over which to cast the Collider(s). |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

All the Collider2D shapes attached to the Rigidbody2D are cast into the Scene starting at each Collider position ignoring the Colliders attached to the same Rigidbody2D.

This function will take all the Collider2D shapes attached to the Rigidbody2D and cast them into the Scene starting at the Collider position in the specified `direction` for an optional `distance` and return the results in the provided `results` list.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additionally, this will also detect other Collider(s) overlapping the collider start position. In this case the cast shape will be starting inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction to cast each Collider2D shape. |
| contactFilter | Filter results defined by the contact filter. |
| results | List to receive results. |
| distance | Maximum distance over which to cast the Collider(s). |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

All the Collider2D shapes attached to the Rigidbody2D are cast into the Scene starting at each Collider position ignoring the Colliders attached to the same Rigidbody2D.

This function will take all the Collider2D shapes attached to the Rigidbody2D and cast them into the Scene starting at the Collider position in the specified `direction` for an optional `distance` and return the results in the provided `results` list.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The `contactFilter` parameter can filter the returned results by the options in ContactFilter2D.

Additionally, this will also detect other Collider(s) overlapping the collider start position. In this case the cast shape will be starting inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction to cast each Collider2D shape. |
| results | Array to receive results. |
| distance | Maximum distance over which to cast the Collider(s). |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

All the Collider2D shapes attached to the Rigidbody2D are cast into the Scene starting at each Collider position ignoring the Colliders attached to the same Rigidbody2D.

This function will take all the Collider2D shapes attached to the Rigidbody2D and cast them into the Scene starting at the Collider position in the specified `direction` for an optional `distance` and return the results in the provided `results` array.

The integer return value is the number of results written into the `results` array. The results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved when casts are performed frequently.

Additionally, this will also detect other Collider(s) overlapping the collider start position. In this case the cast shape will be starting inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction to cast each Collider2D shape. |
| contactFilter | Filter results defined by the contact filter. |
| results | Array to receive results. |
| distance | Maximum distance over which to cast the Collider(s). |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

All the Collider2D shapes attached to the Rigidbody2D are cast into the Scene starting at each Collider position ignoring the Colliders attached to the same Rigidbody2D.

This function will take all the Collider2D shapes attached to the Rigidbody2D and cast them into the Scene starting at the Collider position in the specified `direction` for an optional `distance` and return the results in the provided `results` array.

The integer return value is the number of results written into the `results` array. The results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved when casts are performed frequently.

The `contactFilter` parameter can filter the returned results by the options in ContactFilter2D.

Additionally, this will also detect other Collider(s) overlapping the collider start position. In this case the cast shape will be starting inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to start casting the rigidbody from. |
| angle | The rotation of the rigidbody (in degrees). |
| direction | Vector representing the direction to cast each Collider2D shape. |
| results | List to receive results. |
| distance | Maximum distance over which to cast the Collider(s). |

### Returns

**void** Returns the number of results placed in the `results` list.

### Description

The Rigidbody2D is cast into the Scene starting at the specified position and rotation. All the Collider2D shapes attached to the Rigidbody2D are cast along with it ignoring the Colliders attached to the same Rigidbody2D.

This function, unlike Rigidbody2D.Cast allows you to cast the Rigidbody2D and all its attached Collider2D through the scene but also allows the starting `position` and `angle` of the Rigidbody2D to be specified.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

**NOTE**: Additionally, this will also detect other Collider(s) overlapping the start position. In this case the cast shape will be starting inside another Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: Rigidbody2D.Cast and ContactFilter2D.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to start casting the rigidbody from. |
| angle | The rotation of the rigidbody (in degrees). |
| direction | Vector representing the direction to cast each Collider2D shape. |
| contactFilter | Filter results defined by the contact filter. |
| results | List to receive results. |
| distance | Maximum distance over which to cast the Collider(s). |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

The Rigidbody2D is cast into the Scene starting at the specified position and rotation. All the Collider2D shapes attached to the Rigidbody2D are cast along with it ignoring the Colliders attached to the same Rigidbody2D.

This function, unlike Rigidbody2D.Cast allows you to cast the Rigidbody2D and all its attached Collider2D through the scene but also allows the starting `position` and `angle` of the Rigidbody2D to be specified.

This function also uses the specified `contactFilter` therefore the specific LayerMask of each Collider2D attached to this Rigidbody2D is not used to detect contacts. If this isn't desired then the CastFrom overload without the ContactFilter2D argument should be used.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

**NOTE**: Additionally, this will also detect other Collider(s) overlapping the start position. In this case the cast shape will be starting inside another Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the `direction` vector being tested.

Additional resources: Rigidbody2D.Cast and ContactFilter2D.

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction to cast each Collider2D shape. |
| distance | Maximum distance over which to cast the Collider(s). |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**void** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

All the Collider2D shapes attached to the Rigidbody2D are cast into the Scene starting at each Collider position ignoring the Colliders attached to the same Rigidbody2D.

This function will take all the Collider2D shapes attached to the Rigidbody2D and cast them into the Scene starting at the Collider position in the specified `direction` for an optional `distance` and return the results in the provided `results` list.

Additionally, this will also detect other Collider(s) overlapping the collider start position. In this case the cast shape will be starting inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction to cast each Collider2D shape. |
| contactFilter | Filter results defined by the contact filter. |
| distance | Maximum distance over which to cast the Collider(s). |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<RaycastHit2D>** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

All the Collider2D shapes attached to the Rigidbody2D are cast into the Scene starting at each Collider position ignoring the Colliders attached to the same Rigidbody2D.

This function will take all the Collider2D shapes attached to the Rigidbody2D and cast them into the Scene starting at the Collider position in the specified `direction` for an optional `distance` and return the results in the provided `results` list.

The `contactFilter` parameter can filter the returned results by the options in ContactFilter2D.

Additionally, this will also detect other Collider(s) overlapping the collider start position. In this case the cast shape will be starting inside the Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to start casting the rigidbody from. |
| angle | The rotation of the rigidbody (in degrees). |
| direction | Vector representing the direction to cast each Collider2D shape. |
| distance | Maximum distance over which to cast the Collider(s). |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**void** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

The Rigidbody2D is cast into the Scene starting at the specified position and rotation. All the Collider2D shapes attached to the Rigidbody2D are cast along with it ignoring the Colliders attached to the same Rigidbody2D.

This function, unlike Rigidbody2D.Cast allows you to cast the Rigidbody2D and all its attached Collider2D through the scene but also allows the starting `position` and `angle` of the Rigidbody2D to be specified.

**NOTE**: Additionally, this will also detect other Collider(s) overlapping the start position. In this case the cast shape will be starting inside another Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the `direction` vector being tested.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: Rigidbody2D.Cast and ContactFilter2D.

### Parameters

| Parameter | Description |
| --- | --- |
| position | The position to start casting the rigidbody from. |
| angle | The rotation of the rigidbody (in degrees). |
| direction | Vector representing the direction to cast each Collider2D shape. |
| contactFilter | Filter results defined by the contact filter. |
| distance | Maximum distance over which to cast the Collider(s). |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<RaycastHit2D>** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

The Rigidbody2D is cast into the Scene starting at the specified position and rotation. All the Collider2D shapes attached to the Rigidbody2D are cast along with it ignoring the Colliders attached to the same Rigidbody2D.

This function, unlike Rigidbody2D.Cast allows you to cast the Rigidbody2D and all its attached Collider2D through the scene but also allows the starting `position` and `angle` of the Rigidbody2D to be specified.

This function also uses the specified `contactFilter` therefore the specific LayerMask of each Collider2D attached to this Rigidbody2D is not used to detect contacts. If this isn't desired then the CastFrom overload without the ContactFilter2D argument should be used.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

**NOTE**: Additionally, this will also detect other Collider(s) overlapping the start position. In this case the cast shape will be starting inside another Collider and may not intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the `direction` vector being tested.

Additional resources: Rigidbody2D.Cast and ContactFilter2D.
