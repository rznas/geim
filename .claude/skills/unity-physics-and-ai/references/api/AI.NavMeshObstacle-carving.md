<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshObstacle-carving.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should this obstacle make a cut-out in the navmesh.

When enabled, this changes the navmesh by cutting out a hole. The shape of the hole is based on the size and shape set on NavMeshObstacle and the navmesh bake settings for radius and height.

When the obstacle moves, the carved hole will also move but to reduce CPU overhead the hole is only recalculated when necessary. The recalculation logic has two options: 1) carve when stationary, 2) carve when moved.

"Carve when stationary" is the default behavior and is used when carveOnlyStationary is set to true. The obstacle is treated as moving when it has moved more than the distance set by carvingMoveThreshold. At this time, the carved hole is removed. When the obstacle has stopped moving, and has been stationary more than carvingTimeToStationary seconds, the obstacles is treated stationary and carving is updated again. While the obstacle is moving, the agents will avoid it using the collision avoidance, but will not plan paths around it. This mode is generally the best choice in terms of performance. It is good match when the game object is controlled by physics (i.e. crates and barrels).

"Carve when moved" behavior is used when carveOnlyStationary is set to false. In this mode the carved hole is updated when the obstacle has moved more than the distance set by carvingMoveThreshold. This mode is well suited for large slowly moving obstacles, for example a tank that is being avoided by infantry.
