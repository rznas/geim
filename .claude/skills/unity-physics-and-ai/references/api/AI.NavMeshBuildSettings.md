<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The NavMeshBuildSettings struct allows you to specify a collection of settings which describe the dimensions and limitations of a particular agent type.

You might want to define multiple NavMeshBuildSettings if your game involves characters with large differences in height, width or climbing ability.

You can also use this struct to control the precision and granularity of the build process, by setting the voxel and tile sizes. Some of the values are coupled, meaning there are constraints on the values based on other values. For example, it’s not valid for agentClimb to be larger than agentHeight. To help diagnose violations of these rules, a special method ValidationReport can be evaluated.

### Properties

| Property | Description |
| --- | --- |
| agentClimb | The maximum vertical step size an agent can take. |
| agentHeight | The height of the agent for baking in world units. |
| agentRadius | The radius of the agent for baking in world units. |
| agentSlope | The maximum slope angle which is walkable (angle in degrees). |
| agentTypeID | The agent type ID the NavMesh will be baked for. |
| buildHeightMesh | Enables the creation of additional data needed to determine the height at any position on the NavMesh more accurately. |
| debug | Options for collecting debug data during the build process. |
| ledgeDropHeight | Maximum agent drop height. |
| maxJobWorkers | The maximum number of worker threads that the build process can utilize when building a NavMesh with these settings. |
| maxJumpAcrossDistance | Maximum agent jump distance. |
| minRegionArea | The approximate minimum area of individual NavMesh regions. |
| overrideTileSize | Enables overriding the default tile size. Additional resources: tileSize. |
| overrideVoxelSize | Enables overriding the default voxel size. Additional resources: voxelSize. |
| preserveTilesOutsideBounds | Specifies whether to keep the NavMesh unchanged in the sections outside the build bounds during a NavMesh update. |
| tileSize | Sets the tile size in voxel units. |
| voxelSize | Sets the voxel size in world length units. |

### Public Methods

| Method | Description |
| --- | --- |
| ValidationReport | Validates the properties of NavMeshBuildSettings. |
