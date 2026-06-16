<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.GetJoints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<PhysicsJoint>** The joints attached to this body. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Get the joints attached to this body.
