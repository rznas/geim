<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSettings-tileSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the tile size in voxel units.

The NavMesh is built in square tiles in order to build the mesh in parallel and to control maximum memory usage. It also helps to make the carving changes more local. If you plan to update NavMesh at runtime, a good tile size is around 32–128 voxels (roughly 5 to 20 meters for human size characters). 64 is good value to start, and you can use the profiler window to find a good trade off. Default value is 256, which is good for static baking. If you use a lot of carving obstacles you can try a smaller size if you see in the profiler that a lot of time is being spent on carving.

The tile size is specified in units of voxels per tile side length.

Note: if you want to use this setting, you must also set overrideTileSize to true.
