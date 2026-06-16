<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.AI.NavMeshWorld.AddDependency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| job | The job that needs to be completed before the NavMesh world can be modified in any way. |

### Description

Tells the NavMesh world to halt any changes until the specified job is completed.

When jobs process NavMeshQuery operations, it is essential that the NavMesh data does not change. Thus, every time a job of that type is scheduled its JobHandle must be passed to the NavMeshWorld using this method. Otherwise, an exception will be thrown when the project is running in the Editor.

Additional resources: IJob, IJobParallelFor.
