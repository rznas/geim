<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene2D.Linecast.html
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

Casts a line segment against Colliders in the PhysicsScene2D.

A *linecast* is an imaginary line between two points in world space. Any Collider2D making contact with this line can be detected and reported. This differs from the similar *raycast* in that raycasting specifies the line using an origin, direction and distance. Linecasts are useful for determining lines of sight, targets hit by gunfire and for many other purposes in gameplay.

The results can also be filtered by the `contactFilter`. All results are sorted by ascending distance order.

Additional resources: PhysicsScene2D and RaycastHit2D.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: PhysicsScene2D, RaycastHit2D, LayerMask, Physics2D.DefaultRaycastLayers, Physics2D.IgnoreRaycastLayer, Physics2D.queriesHitTriggers.

### Parameters

| Parameter | Description |
| --- | --- |
| start | The start point of the line in world space. |
| end | The end point of the line in world space. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |
| results | The listto receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Casts a line segment against Colliders in the PhysicsScene2D.

A *linecast* is an imaginary line between two points in world space. Any Collider2D making contact with this line can be detected and reported. This differs from the similar *raycast* in that raycasting specifies the line using an origin, direction and distance. Linecasts are useful for determining lines of sight, targets hit by gunfire and for many other purposes in gameplay.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`. All results are sorted by ascending distance order.

Additional resources: PhysicsScene2D and RaycastHit2D.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: PhysicsScene2D, RaycastHit2D, LayerMask, Physics2D.DefaultRaycastLayers, Physics2D.IgnoreRaycastLayer, Physics2D.queriesHitTriggers.

### Parameters

| Parameter | Description |
| --- | --- |
| start | The start point of the line in world space. |
| end | The end point of the line in world space. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |
| layerMask | The filter used to detect Colliders only on certain layers. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Casts a line segment against colliders in the PhysicsScene2D.

A *linecast* is an imaginary line between two points in world space. Any Collider2D making contact with this line can be detected and reported. This differs from the similar *raycast* in that raycasting specifies the line using an origin, direction and distance. Linecasts are useful for determining lines of sight, targets hit by gunfire and for many other purposes in gameplay.

This function returns any Collider2D that intersect the line segment with the results returned in the supplied array. The integer return value is the number of objects that intersect the line (possibly zero) but the results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved. Note that you will always get zero results if you pass an empty array.

The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example). Overloads of this method that use `contactFilter` can filter the results by the options available in ContactFilter2D.

Additionally, this will also detect collider(s) at the start of the ray. In this case, the ray starts inside the collider and doesn't intersect the collider surface. This means that the collision normal cannot be calculated, in which case the returned collision normal is set to the inverse of the ray vector being tested. This can easily be detected because such results are always at a RaycastHit2D fraction of zero.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: PhysicsScene2D, RaycastHit2D, LayerMask, Physics2D.DefaultRaycastLayers, Physics2D.IgnoreRaycastLayer, Physics2D.queriesHitTriggers.

### Parameters

| Parameter | Description |
| --- | --- |
| start | The start point of the line in world space. |
| end | The end point of the line in world space. |
| layerMask | The filter used to detect Colliders only on certain layers. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth, or normal angle. |

### Returns

**void** The cast results returned.

### Description

Casts a line segment against colliders in the PhysicsScene2D, returning the first intersection only.

A *linecast* is an imaginary line between two points in world space. Any Collider2D making contact with this line can be detected and reported. This differs from the similar *raycast* in that raycasting specifies the line using an origin, direction and distance. Linecasts are useful for determining lines of sight, targets hit by gunfire and for many other purposes in gameplay.

This function returns a RaycastHit2D object when the line contacts a Collider2D in the Scene. The direction of the line is assumed to extend from the start point to the end point. Only the first collider encountered in that direction will be reported.

The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example). Overloads of this method that use `contactFilter` can filter the results by the options available in ContactFilter2D.

Additionally, this will also detect collider(s) at the start of the ray. In this case, the ray starts inside the collider and doesn't intersect the collider surface. This means that the collision normal cannot be calculated, in which case the returned collision normal is set to the inverse of the ray vector being tested. This can easily be detected because such results are always at a RaycastHit2D fraction of zero.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: PhysicsScene2D, RaycastHit2D, LayerMask, Physics2D.DefaultRaycastLayers, Physics2D.IgnoreRaycastLayer, Physics2D.queriesHitTriggers.
