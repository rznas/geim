<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PhysicsScene2D.OverlapArea.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| pointA | One corner of the rectangle. |
| pointB | The corner of the rectangle diagonally opposite the pointA corner. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask and Z depth. Note that the normal angle is not used for overlap testing. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**ColliderArray2D** A collection of Collider2D containing the results. The collection does not allocate any managed memory but must be disposed of.

### Description

Checks an area (non-rotated box) against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapArea" is conceptually like looking at the Scene through a rectangular shape to determine what can be seen. Any Collider2D seen can be detected and reported.

This function returns a collection of Collider2D in a ColliderArray2D. The collection does not allocate any managed memory but must be disposed of.

The results can also be filtered by the `contactFilter`.

### Parameters

| Parameter | Description |
| --- | --- |
| pointA | One corner of the rectangle. |
| pointB | The corner of the rectangle diagonally opposite the pointA corner. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask and Z depth. Note that the normal angle is not used for overlap testing. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Checks an area (non-rotated box) against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapArea" is conceptually like looking at the Scene through a rectangular shape to determine what can be seen. Any Collider2D seen can be detected and reported.

This function returns a list of Collider2D that overlap the area.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

The results can also be filtered by the `contactFilter`.

### Parameters

| Parameter | Description |
| --- | --- |
| pointA | One corner of the rectangle. |
| pointB | The corner of the rectangle diagonally opposite the pointA corner. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |
| layerMask | Filter to check objects only on specific layers. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask and Z depth. Note that the normal angle is not used for overlap testing. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Checks an area (non-rotated box) against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapArea" is conceptually like looking at the Scene through a rectangular shape to determine what can be seen. Any Collider2D seen can be detected and reported.

This function returns an array of Collider2D that overlap the area.

The integer return value is the number of objects that intersect the area (possibly zero) but the results array will not be resized if it doesn't contain enough elements to report all the results. The significance of this is that no memory is allocated for the results and so garbage collection performance is improved. Note that you will always get zero results if you pass an empty array.

The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example). Overloads of this method that use `contactFilter` can filter the results by the options available in ContactFilter2D.

Additional resources: PhysicsScene2D, LayerMask, Physics2D.DefaultRaycastLayers, Physics2D.IgnoreRaycastLayer, Physics2D.queriesHitTriggers.

### Parameters

| Parameter | Description |
| --- | --- |
| pointA | One corner of the rectangle. |
| pointB | The corner of the rectangle diagonally opposite the pointA corner. |
| layerMask | Filter to check objects only on specific layers. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask and Z depth. Note that the normal angle is not used for overlap testing. |

### Returns

**void** The collider overlapping the area.

### Description

Checks an area (non-rotated box) against Colliders in the PhysicsScene2D, returning the first intersection only.

An "OverlapArea" is conceptually like looking at the Scene through a rectangular shape to determine what can be seen. Any Collider2D seen can be detected and reported.

This function returns a Collider2D that overlaps the area or NULL if nothing overlaps.

The *layerMask* can be used to detect objects selectively only on certain layers (this allows you to apply the detection only to enemy characters, for example). Overloads of this method that use `contactFilter` can filter the results by the options available in ContactFilter2D.

Additional resources: PhysicsScene2D, LayerMask, Physics2D.DefaultRaycastLayers, Physics2D.IgnoreRaycastLayer, Physics2D.queriesHitTriggers.
