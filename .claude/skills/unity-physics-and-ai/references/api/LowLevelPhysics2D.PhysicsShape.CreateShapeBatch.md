<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsShape.CreateShapeBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| body | The body to attach the shape to. |
| geometry | The shape geometry to use. |
| definition | The shape definition to use. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PhysicsShape>** The created shapes. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create a batch of Circle shapes attached to the specified body.

### Parameters

| Parameter | Description |
| --- | --- |
| body | The body to attach the shape to. |
| geometry | The shape geometry to use. |
| definition | The shape definition to use. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PhysicsShape>** The created shapes. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create a batch of Polygon shapes attached to the specified body.

### Parameters

| Parameter | Description |
| --- | --- |
| body | The body to attach the shape to. |
| geometry | The shape geometry to use. |
| definition | The shape definition to use. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PhysicsShape>** The created shapes. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create a batch of Capsule shapes attached to the specified body.

### Parameters

| Parameter | Description |
| --- | --- |
| body | The body to attach the shape to. |
| geometry | The shape geometry to use. |
| definition | The shape definition to use. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PhysicsShape>** The created shapes. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create a batch of Segment shapes attached to the specified body.

### Parameters

| Parameter | Description |
| --- | --- |
| body | The body to attach the shape to. |
| geometry | The shape geometry to use. |
| definition | The shape definition to use. |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PhysicsShape>** The created shapes. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Create a batch of Chain Segment shapes attached to the specified body.
