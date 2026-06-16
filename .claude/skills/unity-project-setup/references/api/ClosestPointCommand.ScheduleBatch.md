<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClosestPointCommand.ScheduleBatch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| commands | A NativeArray of the ClosestPointCommands to perform. |
| results | A NativeArray of the Vector3 where the results of the commands are stored. |
| minCommandsPerJob | The minimum number of jobs which should be performed in a single job. |
| dependsOn | A JobHandle of a job which must be completed before the closest point starts. |

### Returns

**JobHandle** The JobHandle of the job that performs the closest point commands.

### Description

Schedule a batch of closest points which are performed in a job.
