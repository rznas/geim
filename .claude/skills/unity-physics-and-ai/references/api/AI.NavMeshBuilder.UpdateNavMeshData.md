<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuilder.UpdateNavMeshData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | The NavMeshData to update. |
| buildSettings | The build settings which is used to update the NavMeshData. The build settings is also hashed along with the data, so changing settings will cause a full rebuild. |
| sources | List of input geometry used for baking, they describe the surfaces to walk on or obstacles to avoid. |
| localBounds | Bounding box relative to position and rotation which describes the volume where the NavMesh should be built. |

### Returns

**bool** Returns true if the update was successful.

### Description

Incrementally updates the NavMeshData based on the sources.

Each time NavMeshData is built or updated, the source data is hashed, and the hashes are stored along with the NavMeshData.

When called, first the hashes are recomputed and compared and only changed portions are rebuilt. For this reason, the list of sources should always contain all the input geometry, even if they haven't moved or changed. If the list of sources is modified between calls to UpdateNavMeshData the missing/added sources are considered changes. Try to provide the sources that have not changed since the last update in the same relative order as before because their sequence can affect the values of the hashes. This measure ensures that unchanged portions don't get rebuilt unnecessarily.

You must supply a Bounds struct for the `localBounds` parameter.

Additional resources: NavMeshBuilder.UpdateNavMeshDataAsync.
