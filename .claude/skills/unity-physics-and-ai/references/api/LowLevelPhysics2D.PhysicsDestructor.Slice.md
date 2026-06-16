<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsDestructor.Slice.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| target | The target geometry to slice. There must be at least a single geometry element. Any target polygons with a non-zero radius will be ignored. |
| origin | The start of the ray slice line. |
| translation | The translation relative to the origin of the slice ray. This must have a non-zero magnitude. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**SliceResult** The slice results. The transform returned here is the one provided in the target geometry. These results must be disposed of after use otherwise leaks will occur.

### Description

Slice the specified target geometry using the specified slice line.

 The target geometry is sliced using the specified ray as defined by and . The specified line segment and are extended to infinity and so defines a 2D intersection plane. All valid target geometry will returned in either the PhysicsDestructor.SliceResult.leftGeometry or PhysicsDestructor.SliceResult.rightGeometry depending on its side of the line (sliced or not). Left and Right are defined as "looking" along the ray in the direction defined by with Left being anything to the left of the ray and Right being anything to the right of the ray. See SliceResult.
