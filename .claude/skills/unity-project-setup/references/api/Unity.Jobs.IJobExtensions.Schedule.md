<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.IJobExtensions.Schedule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| jobData | The job and data to schedule. |
| dependsOn | The dependency of the job. Dependencies ensure that a job executes on worker threads after the dependency has completed execution, and that two jobs reading or writing to same data do not run in parallel. |

### Returns

**JobHandle** The handle identifying the scheduled job, which you can use as a dependency for a later job or to ensure completion on the main thread.

### Description

Schedules the job for execution on a worker thread.

For large job structs, use IJobExtensions.ScheduleByRef to avoid any large pass-by-values. Additional resources: IJob.
