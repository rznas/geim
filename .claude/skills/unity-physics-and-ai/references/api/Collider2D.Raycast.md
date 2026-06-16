<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D.Raycast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction of the ray. |
| results | Array to receive results. |
| distance | Maximum distance over which to cast the ray. |
| layerMask | Filter to check objects only on specific layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than this value. |
| contactFilter | Filter results defined by the contact filter. |

### Returns

**int** The number of results returned.

### Description

Casts a ray into the Scene that starts at the Collider position and ignores the Collider itself.

The integer return value is the number of objects that intersect the ray (possibly zero) but the results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved when raycasts are performed frequently.

Overloads of this function that use `contactFilter` filters the results by the options available in ContactFilter2D.

Additionally, this will also detect other Collider(s) at the start of the ray. In this case the ray is starting inside the Collider and doesn't intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the ray vector being tested. This can easily be detected because such results are always at a RaycastHit2D fraction of zero.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: LayerMask class, RaycastHit2D class, [[Physics2D::AllLayers]], [[Physics2D::IgnoreRaycastLayer]], [[Physics2D::raycastsHitTriggers]].

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction of the ray. |
| contactFilter | Filter results defined by the contact filter. |
| results | List to receive results. |
| distance | Maximum distance over which to cast the ray. |

### Returns

**void** The number of results returned.

### Description

Casts a ray into the Scene that starts at the Collider position and ignores the Collider itself.

The integer return value is the number of Colliders that intersect the ray (possibly zero). The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additionally, this will also detect other Collider(s) at the start of the ray. In this case the ray is starting inside the Collider and doesn't intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the ray vector being tested. This can easily be detected because such results are always at a RaycastHit2D fraction of zero.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: RaycastHit2D class.

### Parameters

| Parameter | Description |
| --- | --- |
| direction | Vector representing the direction of the ray. |
| contactFilter | Filter results defined by the contact filter. |
| distance | Maximum distance over which to cast the ray. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**void** The NativeArray that contains the results. This must be disposed of unless it contains no results.

### Description

Casts a ray into the Scene that starts at the Collider position and ignores the Collider itself.

Additionally, this will also detect other Collider(s) at the start of the ray. In this case the ray is starting inside the Collider and doesn't intersect the Collider surface. This means that the collision normal cannot be calculated in which case the collision normal returned is set to the inverse of the ray vector being tested. This can easily be detected because such results are always at a RaycastHit2D fraction of zero.

**NOTE:** All results are sorted into ascending distance order i.e. the first result is the closest.

Additional resources: RaycastHit2D class.
