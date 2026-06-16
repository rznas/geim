<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshBuilder.UpdateNavMeshDataAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | The NavMeshData to update. |
| buildSettings | The build settings used to update the NavMeshData. The build settings are also hashed along with the data, so changing the settings is likely to cause a full rebuild. |
| sources | List of input geometry used for baking, they describe the surfaces to walk on or obstacles to avoid. |
| localBounds | Bounding box relative to position and rotation which describes to volume where the NavMesh should be built. |

### Returns

**AsyncOperation** Can be used to check the progress of the update.

### Description

Asynchronously and incrementally updates the NavMeshData based on the sources.

Each time NavMeshData is built or updated, the source data is hashed, and the hashes are stored along with the NavMeshData.

 When UpdateNavMeshDataAsync() is called, first the hashes are compared and only changed portions are rebuilt. For this reason, the list of sources should always contain all the input geometry, even if they haven't moved or changed. If the list of sources is modified between calls to UpdateNavMeshDataAsync the missing/added sources are considered changes. Try to provide the sources that have not changed since the last update in the same relative order as before because their sequence can affect the values of the hashes. This measure ensures that unchanged portions don't get rebuilt unnecessarily.

You must supply a Bounds struct for the `localBounds` parameter.

Additional resources: NavMeshBuilder.Cancel.
