<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.BoxCast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the box originates. |
| size | The size of the box. |
| angle | The angle of the box (in degrees). |
| direction | A vector representing the direction to cast the box. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| distance | The maximum distance over which to cast the box. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<RaycastHit2D>** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

Casts a box against the Colliders in the Scene and returns all Colliders that are in contact with it.

The results can also be filtered by the `contactFilter`.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: ContactFilter2D and RaycastHit2D.

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the box originates. |
| size | The size of the box. |
| angle | The angle of the box (in degrees). |
| direction | A vector representing the direction to cast the box. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| results | The list to receive results. |
| distance | The maximum distance over which to cast the box. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Casts a box against the Colliders in the Scene and returns all Colliders that are in contact with it.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: ContactFilter2D and RaycastHit2D.

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the box originates. |
| size | The size of the box. |
| angle | The angle of the box (in degrees). |
| direction | A vector representing the direction to cast the box. |
| distance | The maximum distance over which to cast the box. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Casts a box against the Colliders in the Scene and returns all Colliders that are in contact with it.

This function returns the number of contacts found and places those contacts in the `results` array. The results can also be filtered by the `contactFilter`.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: ContactFilter2D and RaycastHit2D.

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the box originates. |
| size | The size of the box. |
| angle | The angle of the box (in degrees). |
| direction | A vector representing the direction to cast the box. |
| distance | The maximum distance over which to cast the box. |
| layerMask | Filter to detect Colliders only on certain layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than or equal to this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than or equal to this value. |

### Returns

**RaycastHit2D** The cast results returned.

### Description

Casts a box against Colliders in the Scene, returning the first Collider to contact with it.

A *BoxCast* is conceptually like dragging a box through the Scene in a particular direction. Any object making contact with the box can be detected and reported.

This function returns a RaycastHit2D object with a reference to the Collider that is hit by the box (the Collider property of the result will be NULL if nothing was hit). The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example).

The returned RaycastHit2D returns both the point and normal of the contact where the box would touch the Collider. It also returns the centroid where the box would be positioned for it to contact at that point.

BoxCast has a `size` option. This defines how large the box is. The box is fired through the world. The larger the box is the more GameObjects will be hit.

BoxCast also has a `angle` option. The box which is fired through the elements in the game can be rotated. This means that the collision between the BoxCast and a GameObject can be more hard to observe.

The BoxCast.direction variable determines how the Box moves in the Game. This is a 2D variable controlling the horizontal and vertical directions.

Distance controls how far from the `origin` the Box travels. It may interact with many `Colliders` or none. In these cases the closest Collider2D provides the values set in the RaycastHit2D variable. If no `Collider2D` is hit then NULL is returned.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: LayerMask class, RaycastHit2D class, BoxCastAll, DefaultRaycastLayers, IgnoreRaycastLayer, raycastsHitTriggers.
