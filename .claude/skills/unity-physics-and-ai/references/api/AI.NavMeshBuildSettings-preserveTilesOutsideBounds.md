<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSettings-preserveTilesOutsideBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether to keep the NavMesh unchanged in the sections outside the build bounds during a NavMesh update.

With this property enabled, a NavMesh update recomputes only the NavMesh tiles that fall completely inside the specified local bounds. All other tiles, such as those fully outside the bounds or those that only partially intersect them, remain unchanged. Unity rebuilds the recomputed tiles as usual from the provided NavMeshBuildSource objects.

The default value is false, which means all tiles are rebuilt during a NavMesh update regardless of whether they fall inside the bounds.

This property is useful when you need to update the NavMesh in a limited volume at runtime without affecting the rest of the NavMesh. Use this property to clear tiles in a specific area. Unity removes any tile inside the bounds that has no overlapping sources.

The spatial dimensions of a NavMesh tile equal tileSize multiplied by voxelSize. The world position of the tile grid origin depends on the positions and rotations used to build and then to instantiate the NavMeshData. The bounds passed to NavMeshBuilder.UpdateNavMeshData or NavMeshBuilder.UpdateNavMeshDataAsync are in local space relative to that origin.

When this property is true, a NavMesh update has the following additional effects:

- Unity doesn't create the height mesh, and if one already exists, Unity removes it.
- Unity removes all automatically generated off-mesh links and doesn't regenerate them. This is because generated links cannot be modified for only one section of the NavMesh. Manually placed NavMeshLink components are unaffected.
- The NavMesh builder carries over most build settings from the existing NavMeshData in order to preserve consistency. The exceptions are minRegionArea, maxJobWorkers, debug, and buildHeightMesh, which are taken from the settings you provide. Unity ignores changes to other settings such as agentTypeID or agentHeight. The values already stored in the NavMeshData are used instead.

Known issue: If you call NavMeshBuilder.UpdateNavMeshDataAsync a second time for the same NavMeshData object, the first operation is canceled. Therefore, you can't start operations with `preserveTilesOutsideBounds` in parallel to affect different parts of the NavMesh. Each call must wait for the previous operation's AsyncOperation.isDone to be true before starting.

This property is available as of Unity 2020.1.
