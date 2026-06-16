<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuilder.BuildNavMeshData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildSettings | Settings for the bake process, see NavMeshBuildSettings. |
| sources | List of input geometry used for baking, they describe the surfaces to walk on or obstacles to avoid. |
| localBounds | Bounding box relative to position and rotation which describes the volume where the NavMesh should be built. Empty bounds is treated as no bounds, i.e. the NavMesh will cover all the inputs. |
| position | Center of the NavMeshData. This specifies the origin for the NavMesh tiles (Additional resources: NavMeshBuildSettings.tileSize). |
| rotation | Orientation of the NavMeshData, you can use this to generate NavMesh with an arbitrary up-vector – e.g. for walkable vertical surfaces. |

### Returns

**NavMeshData** Returns a newly built NavMeshData, or null if the NavMeshData was empty or an error occurred. The newly built NavMeshData, or null if the NavMeshData was empty or an error occurred.

### Description

Builds a NavMesh data object from the provided input sources.

Note: that NavMeshBuilder.BuildNavMeshData has same effect as creating a new empty NavMeshData and calling NavMeshBuilder.UpdateNavMeshData.
