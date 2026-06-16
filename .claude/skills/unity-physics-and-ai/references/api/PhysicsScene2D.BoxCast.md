<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene2D.BoxCast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the box originates. |
| size | The size of the box. |
| angle | The angle of the box (in degrees). |
| direction | Vector representing the direction to cast the box. |
| distance | Maximum distance over which to cast the box. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<RaycastHit2D>** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

Casts a box against the Colliders in the PhysicsScene2D, returning all intersections.

A "BoxCast" is conceptually like dragging a box shape through the Scene in a particular direction. Any Collider2D making contact with the box can be detected and reported.

The results can also be filtered by the `contactFilter`.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: PhysicsScene2D and RaycastHit2D.

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the box originates. |
| size | The size of the box. |
| angle | The angle of the box (in degrees). |
| direction | Vector representing the direction to cast the box. |
| distance | Maximum distance over which to cast the box. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Casts a box against the Colliders in the PhysicsScene2D, returning all intersections.

A "BoxCast" is conceptually like dragging a box shape through the Scene in a particular direction. Any Collider2D making contact with the box can be detected and reported.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: PhysicsScene2D and RaycastHit2D.

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the box originates. |
| size | The size of the box. |
| angle | The angle of the box (in degrees). |
| direction | Vector representing the direction to cast the box. |
| distance | Maximum distance over which to cast the box. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |
| layerMask | Filter to detect colliders only on certain layers. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Casts a box against the colliders in the PhysicsScene2D, returning all intersections.

A "BoxCast" is conceptually like dragging a box shape through the Scene in a particular direction. Any Collider2D making contact with the box can be detected and reported.

This function returns an array of RaycastHit2D object(s) with a reference to the collider that is hit by the box (the collider property of the result will be NULL if nothing was hit) and contains both the point and normal of the contact where the box would touch the collider. It also returns the centroid where the box would be positioned for it to contact the collider at that point.

The integer return value is the number of objects that intersect the box (possibly zero) but the results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved. Note that you will always get zero results if you pass an empty array.

The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example). Overloads of this method that use `contactFilter` can filter the results by the options available in ContactFilter2D.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: PhysicsScene2D, RaycastHit2D, LayerMask, Physics2D.DefaultRaycastLayers, Physics2D.IgnoreRaycastLayer, Physics2D.queriesHitTriggers.

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The point in 2D space where the box originates. |
| size | The size of the box. |
| angle | The angle of the box (in degrees). |
| direction | Vector representing the direction to cast the box. |
| distance | Maximum distance over which to cast the box. |
| layerMask | Filter to detect colliders only on certain layers. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |

### Returns

**void** The cast results returned.

### Description

Casts a box against colliders in the PhysicsScene2D, returning the first intersection only.

A "BoxCast" is conceptually like dragging a box shape through the Scene in a particular direction. Any Collider2D making contact with the box can be detected and reported.

This function returns a RaycastHit2D object with a reference to the collider that is hit by the box (the collider property of the result will be NULL if nothing was hit) and contains both the point and normal of the contact where the box would touch the collider. It also returns the centroid where the box would be positioned for it to contact the collider at that point.

The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example). Overloads of this method that use `contactFilter` can filter the results by the options available in ContactFilter2D.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: PhysicsScene2D, RaycastHit2D, LayerMask, Physics2D.DefaultRaycastLayers, Physics2D.IgnoreRaycastLayer, Physics2D.queriesHitTriggers.
