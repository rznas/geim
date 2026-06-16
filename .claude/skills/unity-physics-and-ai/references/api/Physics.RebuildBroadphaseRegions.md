<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.RebuildBroadphaseRegions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| worldBounds | Boundaries of the physics world. |
| subdivisions | How many cells to create along x and z axis. |

### Description

Rebuild the broadphase interest regions as well as set the world boundaries.

Effective only when the Multi-box Pruning Broadphase is used.

In this mode, the boundaries of the world have to be set and then the physics engine would subdivide the volume into a flat grid in the XZ plane, with each cell containing a set of objects that belong to the cell. One may think that each cell contains an instance of the regular sweep-and-prune broadphase. The main benefit of having a grid is to be able to avoid the typical sweep-and-prune locality problem where in a flat world all the objects overlap each other along the Y axis thus causing excess rebuilding of the SAP projections lists along each axis even for the objects that are far apart.

Note that the physics objects located outside of the world boundaries will not detect collisions at all.

There is a limit of 256 on the total amount of world cells currently, so the maximum number you can set to subdivisions is 16.

This function is useful to make the broadphase settings per-scene, not per-project.
