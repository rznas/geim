<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BoxcastCommand.ScheduleBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| commands | A NativeArray of the BoxcastCommand to perform. |
| results | A NativeArray of RaycastHit where the result of commands are stored. |
| minCommandsPerJob | The minimum number of commands to perform in a single job. |
| maxHits | The maximum number of Colliders the BoxCast can hit. |
| dependsOn | A JobHandle of a job that must be completed before performing the box casts. |

### Returns

**JobHandle** Returns a JobHandle of the job that will perform the box casts.

### Description

Schedules a batch of boxcasts to be performed in a job.

### Parameters

| Parameter | Description |
| --- | --- |
| commands | A NativeArray of the BoxcastCommand to perform. |
| results | A NativeArray of RaycastHit where the result of commands are stored. |
| minCommandsPerJob | The minimum number of commands to perform in a single job. |
| dependsOn | A JobHandle of a job that must be completed before performing the box casts. |

### Returns

**JobHandle** Returns a JobHandle of the job that will perform the box casts.

### Description

Schedules a batch of boxcasts to be performed in a job.

By default maxHits in this variant is set to 1.
