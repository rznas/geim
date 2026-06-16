<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsChainDefinition-isLoop.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates a closed chain formed by connecting the first and last vertices specified. When enabled, no ghost vertices should be defined in the ChainGeometry.vertices with all being used to define ChainSegmentGeometry with the ghost vertices being calculated automatically to force a closed loop. When disabled, the ChainGeometry.vertices should define ChainSegmentGeometry.ghost1 as the first vertex followed by at least two vertices or more defining the subsequent edges and finally a ChainSegmentGeometry.ghost2 vertex, therefore there must be at least 4 vertices.
