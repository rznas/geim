<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.CreateBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| world | The world to create the bodies in. |
| definition | The body definition to use for all bodies. |
| bodyCount | The number of bodies to create. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PhysicsBody>** The created bodies. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create a batch of bodies in the specified world.

### Parameters

| Parameter | Description |
| --- | --- |
| world | The world to create the bodies in. |
| definitions | The definitions used to create the bodies. The number of bodies produced is implicitly controlled by the number of definitions in this span. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PhysicsBody>** The created bodies. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create a batch of bodies in the specified world.
