<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableCullingParameters-accurateOcclusionThreshold.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This parameter determines query distance for occlusion culling.

The accurateOcclusionThreshold controls the distance where the level of detail (LOD) changes.

 The default value of this parameter is -1, and any value less than 0 has the same effect. Default values result in automatic calculation of the LOD.

 When you use occlusion culling, the occlusion data of the world varies in level of detail. In the occlusion data, there are tiles of various sizes. Each tile contains a cells-and-portals graph. In each cell, visibility is the same. This means that any two points are visible within the cell. Portals are the openings between the cells, which determine the visibility between them.

 The tiles are in a k-d tree. The tree contains different sized tiles, where each tile represents a level of detail. When you query a small tile, you get accurate culling results at the price of query time.

 During the culling, the tile size varies with the distance from the camera. This gives finer detail closer to the camera, and coarser detail at further distance.

 The higher the value is, the higher the accuracy is far away form the camera. High values can have a negative impact on performance.
