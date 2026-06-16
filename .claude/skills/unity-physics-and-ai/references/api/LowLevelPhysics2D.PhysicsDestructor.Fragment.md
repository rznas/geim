<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsDestructor.Fragment.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | The target geometry to fragment. There must be at least a single geometry element. Any target polygons with a non-zero radius will be ignored. |
| fragmentPoints | The world-space fragment points used to define fragment regions. The number of fragment points must be greater than 1. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**FragmentResult** The fragment results. These results must be disposed of after use otherwise leaks will occur.

### Description

Fragment the specified target geometry using the specified fragment points. The fragment points define areas where polygon fragments will be produced from the target geometry. If the resulting polygon fragments have more polygon vertices than can fit into a single PolygonGeometry then the fragment will be split into multiple polygon fragments. The maximum number of vertices a single polygon fragment can have is defined by PhysicsConstants.MaxPolygonVertices. If even a single fragment point overlaps the target geometry then all results will be returned in PhysicsDestructor.FragmentResult.brokenGeometry. If none of the fragment points overlap the target geometry then all the results will be returned in PhysicsDestructor.FragmentResult.unbrokenGeometry. See FragmentResult.

### Parameters

| Parameter | Description |
| --- | --- |
| target | The target geometry to fragment. There must be at least a single geometry element. Any target polygons with a non-zero radius will be ignored. |
| mask | The mask geometry that will be used to clip the target geometry. There must be at least a single geometry element. Any mask polygons with a non-zero radius will be ignored. |
| fragmentPoints | The world-space fragment points used to define fragment regions. The number of fragment points must be greater than 1. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**FragmentResult** The fragment results. The transform returned here is the one provided in the target geometry. These results must be disposed of after use otherwise leaks will occur.

### Description

Fragment the specified mask geometry using the specified fragment points, after the target geometry has the mask (carving) geometry removed from it.

 The target geometry is first clipped with the mask geometry using a PhysicsComposer.Operation.NOT operation. The resulting target geometry is returned in PhysicsDestructor.FragmentResult.unbrokenGeometry. The mask geometry is then clipped with the original target geometry using an PhysicsComposer.Operation.AND operation. If the clipped mask produces no geometry then no results are returned in PhysicsDestructor.FragmentResult.brokenGeometry. The fragment points define areas where polygon fragments will be produced from the clipped masked geometry. The resulting polygon fragments are returned in PhysicsDestructor.FragmentResult.brokenGeometry. If the resulting polygon fragments have more polygon vertices than can fit into a single PolygonGeometry then the fragment will be split into multiple polygon fragments. The maximum number of vertices a single polygon fragment can have is defined by PhysicsConstants.MaxPolygonVertices. See FragmentResult.
