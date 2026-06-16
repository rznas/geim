<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld-drawCapacity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the draw capacity. The draw capacity of the buffers when drawing are initially zero however increasing this value will mean buffers won't be resized when more elements are drawn and therefore no GC allocations will occur. Changes won't take effect until exiting play mode. This value directly controls the capacity for each element type drawn. This is only used in the Unity Editor or in a Development Player.
