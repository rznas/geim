<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| world | NavMeshWorld object used as an entry point to the collection of NavMesh objects. This object that can be used by query operations. |
| allocator | Label indicating the desired life time of the object. (**Known issue:** Currently `allocator` has no effect). |
| pathNodePoolSize | The number of nodes temporarily stored in the query during search operations. The maximum number of nodes is 65,535. By default, if unspecified, the number of nodes is set to 0. |

### Description

Creates the NavMeshQuery object and allocates memory to store NavMesh node information, if required.

You must specify a pathNodePoolSize greater than 0 to use the NavMeshQuery object for pathfinding methods (`BeginFindPath`, `UpdateFindPath`, `EndFindPath`, `GetPathResult` ). If the node pool size for the NavMeshQuery object is too small, the pathfinding method returns a PathQueryStatus.OutOfNodes status. The range of pathNodePoolSize is 0 through 65,535.
