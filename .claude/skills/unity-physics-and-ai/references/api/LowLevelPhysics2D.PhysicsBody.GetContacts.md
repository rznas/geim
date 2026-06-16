<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsBody.GetContacts.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| allocator | The memory allocator to use for the results. This can only be Allocator.Temp, Allocator.TempJob or Allocator.Persistent. |

### Returns

**NativeArray<Contact>** The touching contacts this body is currently participating in. This NativeArray must be disposed of after use otherwise leaks will occur. The exception to this is if the array is empty.

### Description

Get all the touching contacts this body is currently participating in. Speculative collision is used so some contact points may be separated, a property available in the provided contact manifold.
