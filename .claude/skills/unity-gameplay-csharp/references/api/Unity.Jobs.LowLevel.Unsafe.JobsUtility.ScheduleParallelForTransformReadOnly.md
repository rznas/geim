<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.LowLevel.Unsafe.JobsUtility.ScheduleParallelForTransformReadOnly.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**JobHandle** A JobHandle to the new job.

### Description

Schedules an IJobParallelForTransform job with read-only access to the transform data.

This method provides better parallelization because it can read all transforms in parallel instead of just parallelizing across transforms in different hierarchies.
