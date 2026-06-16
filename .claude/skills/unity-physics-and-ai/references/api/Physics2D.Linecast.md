<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.Linecast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| start | The start point of the line in world space. |
| end | The end point of the line in world space. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<RaycastHit2D>** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

Casts a line segment against Colliders in the Scene with results filtered by ContactFilter2D.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: ContactFilter2D and RaycastHit2D.

### Parameters

| Parameter | Description |
| --- | --- |
| start | The start point of the line in world space. |
| end | The end point of the line in world space. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Casts a line segment against Colliders in the Scene with results filtered by ContactFilter2D.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: ContactFilter2D and RaycastHit2D.

### Parameters

| Parameter | Description |
| --- | --- |
| start | The start point of the line in world space. |
| end | The end point of the line in world space. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Casts a line segment against Colliders in the Scene with results filtered by ContactFilter2D.

The overloads of this function with the `contactFilter` parameter can filter the returned results by the options in ContactFilter2D.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: ContactFilter2D and RaycastHit2D.

### Parameters

| Parameter | Description |
| --- | --- |
| start | The start point of the line in world space. |
| end | The end point of the line in world space. |
| layerMask | Filter to detect Colliders only on certain layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than or equal to this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than or equal to this value. |

### Returns

**RaycastHit2D** The cast results returned.

### Description

Casts a line segment against Colliders in the Scene.

A *linecast* is an imaginary line between two points in world space. Any object making contact with this line can be detected and reported. This differs from the similar *raycast* in that raycasting specifies the line using an origin and direction.

This function returns a RaycastHit2D object when the line contacts a Collider in the Scene. The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example). The direction of the line is assumed to extend from the start point to the end point. Only the first Collider encountered in that direction will be reported. Although the Z axis is not relevant for rendering or collisions in 2D, you can use the *minDepth* and *maxDepth* parameters to filter objects based on their Z coordinate.

Linecasts are useful for determining lines of sight, targets hit by gunfire and for many other purposes in gameplay.

Note that this function will allocate memory for the returned RaycastHit2D object.

Additionally, this will also detect Collider(s) at the start of the line. In this case the line is starting inside the Collider and doesn't intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the line vector being tested. This can easily be detected because such results are always at a RaycastHit2D fraction of zero.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: LayerMask class, RaycastHit2D class, LinecastAll, DefaultRaycastLayers, IgnoreRaycastLayer, raycastsHitTriggers.
