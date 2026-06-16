<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics2D.OverlapCircle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| point | Centre of the circle. |
| radius | The radius of the circle. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**ColliderArray2D** A collection of Collider2D containing the results. The collection does not allocate any managed memory but must be disposed of.

### Description

Checks a circle against Colliders in the PhysicsScene2D, returning all intersections.

An "OverlapCircle" is conceptually like looking at the Scene through a circle shape to determine what can be seen. Any Collider2D seen can be detected and reported.

This function returns a collection of Collider2D in a ColliderArray2D. The collection does not allocate any managed memory but must be disposed of.

The results can also be filtered by the `contactFilter`.

### Parameters

| Parameter | Description |
| --- | --- |
| point | Centre of the circle. |
| radius | The radius of the circle. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| results | The list to receive results. |

### Returns

**int** Returns the number of results placed in the `results` list.

### Description

Checks if a Collider is within a circular area.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

### Parameters

| Parameter | Description |
| --- | --- |
| point | Centre of the circle. |
| radius | The radius of the circle. |
| contactFilter | The contact filter used to filter the results differently, such as by layer mask, Z depth. Note that normal angle is not used for overlap testing. |
| results | The array to receive results. The size of the array determines the maximum number of results that can be returned. |

### Returns

**int** Returns the number of results placed in the `results` array.

### Description

Checks if a Collider is within a circular area.

This function returns the number of Colliders found and places those Colliders in the `results` array. The results can also be filtered by the `contactFilter`. Note that filtering by normal angle is not available for overlap functions.

### Parameters

| Parameter | Description |
| --- | --- |
| point | Centre of the circle. |
| radius | The radius of the circle. |
| layerMask | Filter to check objects only on specific layers. |
| minDepth | Only include objects with a Z coordinate (depth) greater than or equal to this value. |
| maxDepth | Only include objects with a Z coordinate (depth) less than or equal to this value. |

### Returns

**Collider2D** The Collider overlapping the circle.

### Description

Checks if a Collider falls within a circular area.

The circle is defined by its centre coordinate in world space and by its radius. The optional *layerMask* allows the test to check only for objects on specific layers.

Although the Z axis is not relevant for rendering or collisions in 2D, you can use the *minDepth* and *maxDepth* parameters to filter objects based on their Z coordinate. If more than one Collider falls within the circle then the one returned will be the one with the lowest Z coordinate value. Null is returned if there are no Colliders in the circle. Additional resources: OverlapCircleAll, OverlapCircle.
