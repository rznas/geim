<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSettings-minRegionArea.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The approximate minimum area of individual NavMesh regions.

This property allows you to cull away small non-connected NavMesh regions. NavMesh regions whose surface area is smaller than the specified value, will be removed.

Note: some regions may not get removed. The NavMesh is built in parallel as a grid of tiles. If a region straddles a tile boundary, the region is not removed. The reason for this is that the region pruning happens at a stage in the build process where surrounding tiles are not available.
