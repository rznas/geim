<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.UpdateFindPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| iterations | Maximum number of nodes to be traversed by the search algorithm during this call. |
| iterationsPerformed | Outputs the actual number of nodes that have been traversed during this call. |

### Returns

**PathQueryStatus** `InProgress` if the search needs to continue further by calling `UpdateFindPath` again.
 `Success` if the search is completed and a path has been found or not.
 `Failure` if the search for the desired position could not be completed because the NavMesh has changed significantly since the search was initiated.
 Additionally the returned value can contain the `OutOfNodes` flag when the `pathNodePoolSize` parameter for the NavMeshQuery initialization was not large enough to accommodate the search space.

### Description

Continues a path search that is in progress.

The operation needs to have been initialized previously with NavMeshQuery.BeginFindPath and it will run until the entire route is found or the specified number of iterations have been executed.

As long as the previous call returned a state of `InProgress` this method can be called repeatedly, across different frames, until the operation is successful. Use NavMeshQuery.EndFindPath afterwards to prepare the path data for retrieval, along with the number of contained nodes.

Additional resources: PathQueryStatus.
