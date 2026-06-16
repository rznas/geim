<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpherecastCommand.ScheduleBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| commands | A NativeArray of SpherecastCommands to perform. |
| results | A NattiveArray of RaycastHit where the result of commands are stored. |
| minCommandsPerJob | The minimum number of commands to perform in a job. |
| dependsOn | A JobHandle of the job that must be completed before performing the sphere casts. |
| maxHits | The maximum number of Colliders the SphereCast can hit. |

### Returns

**JobHandle** Returns a JobHandle of the job that will perform the sphere casts.

### Description

Schedules a batch of sphere casts to perform in a job.

### Parameters

| Parameter | Description |
| --- | --- |
| commands | A NaviveArray of SpherecastCommands to perform. |
| results | A NavtiveArray of RaycastHit where the result of commands are stored. |
| minCommandsPerJob | The minimum number of commands to perform in a job. |
| dependsOn | A JobHandle of the job that must be completed before performing the sphere casts. |

### Returns

**JobHandle** Returns a JobHandle of the job that will perform the sphere casts.

### Description

Schedules a batch of sphere casts to perform in a job.

By default maxHits in this variant is set to 1.
