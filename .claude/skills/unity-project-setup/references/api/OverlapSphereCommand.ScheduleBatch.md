<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/OverlapSphereCommand.ScheduleBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| commands | A NativeArray of the OverlapSphereCommands to perform. |
| results | A NativeArray of the ColliderHits where the results of the commands are stored. |
| minCommandsPerJob | The minimum number of commands to perform in a single job. |
| maxHits | The maximum number of Colliders the overlap can hit. |
| dependsOn | A JobHandle of a job which must be completed before the overlap sphere starts. |

### Returns

**JobHandle** The JobHandle of the job which will perform the overlap sphere.

### Description

Schedule a batch of overlap sphere commands to perform in a job.
