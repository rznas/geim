<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsComposer.GetGeometryIslands.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<RangeInt>** A NativeArray containing a series of ranges where each range is uniquely connected island where the range indicates both the start and end indices of the original polygon indices.

### Description

Get the geometry islands from a previous polygon geometry composition i.e. a call to PhysicsComposer.CreatePolygonGeometry or PhysicsComposer.CreateConvexHulls. Each generated polygon or convex-hull belongs to a unique island defining a set of polygons that are connected together as they share edges. The array returned contains a series of ranges where each range is a unique connected island where the range indicates both the start index and length of the original polygon indices. The number of discovered unique islands is defined by the size of the returned array.
