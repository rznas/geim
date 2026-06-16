<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuildSettings-buildHeightMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables the creation of additional data needed to determine the height at any position on the NavMesh more accurately.

The NavMesh Agent is constrained to the surface of the NavMesh as it navigates. Since the NavMesh is an approximation of the walkable space, some features are evened out when the NavMesh is built. For example, stairs may appear as a slope in the NavMesh. If you need accurate placement of the agent for your game, enable height mesh building when you build the NavMesh. Note that building the height mesh will take up memory and processing at runtime, and it increases the time needed to bake the NavMesh.

The current implementation of the height mesh has the following limitations:

- It can construct height data for a Terrain only when its horizontal plane is parallel to the XZ plane of the NavMesh.
- During a NavMesh update, if the build setting "preserveTilesOutsideBounds" is true the height mesh will not be created and if it already exists, will be removed.

This property is available as of Unity 2022.2. It will be correctly compiled in scripts when the `UNITY_2022_2_OR_NEWER` symbol is defined by the engine.

Additional resources: NavMeshSurface Advanced Settings
