<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastCommand.ScheduleBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| commands | A NativeArray of the RaycastCommands to perform. |
| results | A NativeArray of the RaycastHits where the results of the commands are stored. |
| minCommandsPerJob | The minimum number of commands to perform in a single job. |
| dependsOn | A JobHandle of a job which must be completed before the raycast starts. |
| maxHits | The maximum number of Colliders the ray can hit. |

### Returns

**JobHandle** The JobHandle of the job which will perform the raycasts.

### Description

Schedule a batch of raycasts to perform in a job.

### Parameters

| Parameter | Description |
| --- | --- |
| commands | A NativeArray of the RaycastCommands to perform. |
| results | A NativeArray of the RaycastHits where the results of the commands are stored. |
| minCommandsPerJob | The minimum number of commands to perform in a single job. |
| dependsOn | A JobHandle of a job which must be completed before the raycast starts. |

### Returns

**JobHandle** The JobHandle of the job which will perform the raycasts.

### Description

Schedule a batch of raycasts to perform in a job.

By default maxHits in this variant is set to 1.
