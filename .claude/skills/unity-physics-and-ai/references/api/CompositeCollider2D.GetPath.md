<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CompositeCollider2D.GetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the path from 0 to pathCount minus 1. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<Vector2>** The NativeArray that contains an ordered list of the vertices (points) in the selected path. This must be disposed of unless it contains no results.

### Description

Gets a path from the Collider by its index.

A *path* is a cyclic sequence of line segments between points that define the outline of the Collider. Since the Collider can have holes and discontinuous parts, its shape is not necessarily defined by a single path.

Additional resources: GetPathPointCount & pathCount.

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the path from 0 to pathCount minus 1. |
| points | An ordered list of the vertices (points) in the selected path. |

### Returns

**int** Returns the number of points placed in the `points` list.

### Description

Gets a path from the Collider by its index.

A *path* is a cyclic sequence of line segments between points that define the outline of the Collider. Since the Collider can have holes and discontinuous parts, its shape is not necessarily defined by a single path.

The integer return value is the number of results written into the `results` list. The results list will be resized if it doesn't contain enough elements to report all the results. This prevents memory from being allocated for results when the `results` list does not need to be resized, and improves garbage collection performance when the query is performed frequently.

Additional resources: GetPathPointCount & pathCount.

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the path from 0 to pathCount minus 1. |
| points | An ordered array of the vertices (points) in the selected path. |

### Returns

**int** Returns the number of points placed in the `points` array.

### Description

Gets a path from the Collider by its index.

A *path* is a cyclic sequence of line segments between points that define the outline of the Collider. Since the Collider can have holes and discontinuous parts, its shape is not necessarily defined by a single path.

Returns the number of points placed in the `points` array.

Additional resources: GetPathPointCount & pathCount.
