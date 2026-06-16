<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PolygonGeometry.CreatePolygons.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| vertices | The vertices to create the polygons from. |
| transform | The transform used to specify where the geometry is positioned. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PolygonGeometry>** The created polygon geometries. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create multiple PolygonGeometry from a set of vertices. The vertices are assumed to produce a closed loop but can describe a concave shape if required. There must be at least 3 vertices. A limit is imposed on small vertex distances so be aware that this overload uses a vertex scale of Vector2.one so consider using the overload which allows you to increase this if required.

### Parameters

| Parameter | Description |
| --- | --- |
| vertices | The vertices to create the polygons from. |
| transform | The transform used to specify where the geometry is positioned. |
| vertexScale | The scaling to be applied to the vertices. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PolygonGeometry>** The created polygon geometries. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create multiple PolygonGeometry from a set of vertices. The vertices are assumed to produce a closed loop but can describe a concave shape if required. There must be at least 3 vertices. A limit is imposed on small vertex distances so it is recommended that scaling is applied here rather than on the returned geometry so geometry is not discarded due to it being invalid.

### Parameters

| Parameter | Description |
| --- | --- |
| vertices | The vertices to create the polygons from. |
| transform | The transform used to specify where the geometry is positioned. |
| vertexScale | The scaling to be applied to the vertices. |
| radius | The radius to apply to all generated polygons. Note that this will likely mean that the same polygon region defined by the vertices will not match. |
| useDelaunay | Whether Delaunay tessellation will be used. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PolygonGeometry>** The created polygon geometries. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create multiple PolygonGeometry from a set of vertices. The vertices are assumed to produce a closed loop but can describe a concave shape if required. There must be at least 3 vertices. A limit is imposed on small vertex distances so it is recommended that scaling is applied here rather than on the returned geometry so geometry is not discarded due to it being invalid.
