<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshQuery.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Object used for doing navigation operations in a NavMeshWorld.

NavMeshQuery operations can be executed inside jobs (IJob, IJobParallelFor), as opposed to the operations in the NavMesh-related structures.

To obtain a path between two locations on the NavMesh, you must create a NavMeshQuery with a `pathNodePoolSize` value in the range from 1 to 65,535. After creating a NavMeshQuery, you must call the following methods in this order: `BeginFindPath`, `UpdateFindPath` (can be repeated), `EndFindPath`, `GetPathResult`. These methods store state data within the NavMeshQuery. Other methods can be called in any order since they do not change state data.

All methods throw exceptions if any of their parameters are not valid when executed in the Editor.

**Note:** The intended feature set for NavMeshQuery is not yet fully complete.
