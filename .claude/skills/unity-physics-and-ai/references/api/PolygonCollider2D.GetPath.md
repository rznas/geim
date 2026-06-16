<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PolygonCollider2D.GetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the path to retrieve. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<Vector2>** The NativeArray that contains an ordered list of the vertices (points) in the selected path. This must be disposed of unless it contains no results.

### Description

Gets a path from the Collider by its index.

A *path* is a cyclic sequence of line segments between points that define the outline of the Collider. Because the Collider can have holes and discontinuous parts, its shape is not necessarily defined by a single path.

Returns an ordered list of the points in the path.

Additional resources: pathCount, SetPath.

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the path to retrieve. |
| points | An ordered list of the vertices (points) in the selected path. |

### Returns

**int** Returns the number of results placed in the `points` list.

### Description

Gets a path from the Collider by its index.

A *path* is a cyclic sequence of line segments between points that define the outline of the Collider. Because the Collider can have holes and discontinuous parts, its shape is not necessarily defined by a single path.

Returns an ordered list of the points in the path.

The integer return value is the number of results written into the `points` list. The points list will be resized if it doesn't contain enough elements to report all the points.This prevents memory from being allocated for results when the `points` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: pathCount, SetPath.

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the path to retrieve. |

### Returns

**Vector2[]** An ordered array of the vertices (points) in the selected path.

### Description

Gets a path from the Collider by its index.

A *path* is a cyclic sequence of line segments between points that define the outline of the Collider. Because the Collider can have holes and discontinuous parts, its shape is not necessarily defined by a single path.

Returns an ordered array of the points in the path.

Additional resources: pathCount, SetPath.
