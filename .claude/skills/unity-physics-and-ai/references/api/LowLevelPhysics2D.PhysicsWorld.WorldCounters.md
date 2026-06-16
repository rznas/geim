<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld.WorldCounters.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

PhysicsWorld counters that give details of the world simulation size.

### Properties

| Property | Description |
| --- | --- |
| bodyCount | The number of all body types. |
| broadphaseHeight | The broadphase tree height for both Dynamic and Kinematic bodies. |
| contactCount | The number of contacts. |
| islandCount | The number of islands. |
| jointCount | The number of joints. |
| memoryUsed | The total byte allocation used by the physics system. |
| shapeCount | The number of shapes. |
| stackUsed | The number of bytes assigned to the Stack allocator. |
| staticBroadphaseHeight | The broadphase tree height for Static bodies. |
| taskCount | The number of multi-threaded tasks requested solving the simulation. |

### Static Methods

| Method | Description |
| --- | --- |
| Add | Add the specified world counters together. |
| Maximum | Find the maximum values the specified world counters. |
