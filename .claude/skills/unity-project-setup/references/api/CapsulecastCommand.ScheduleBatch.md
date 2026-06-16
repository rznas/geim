<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CapsulecastCommand.ScheduleBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| commands | A NaviveArray of CapsulecastCommands to perform. |
| results | A NavtiveArray of RaycastHit where the result of commands are stored. |
| minCommandsPerJob | The minimum number of commands to perform in a single job. |
| dependsOn | A jobHandle of a job that must be completed before performing capsule casts. |
| maxHits | The maximum number of Colliders the CapsuleCast can hit. |

### Returns

**JobHandle** Returns a JobHandle of the job that will performs the capsule casts.

### Description

Schedules a batch of capsule casts to perform in a job.

### Parameters

| Parameter | Description |
| --- | --- |
| commands | A NaviveArray of CapsulecastCommands to perform. |
| results | A NavtiveArray of RaycastHit where the result of commands are stored. |
| minCommandsPerJob | The minimum number of commands to perform in a single job. |
| dependsOn | A jobHandle of a job that must be completed before performing capsule casts. |

### Returns

**JobHandle** Returns a JobHandle of the job that will performs the capsule casts.

### Description

Schedules a batch of capsule casts to perform in a job.

By default maxHits in this variant is set to 1.
