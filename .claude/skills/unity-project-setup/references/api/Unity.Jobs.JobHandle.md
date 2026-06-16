<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.JobHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a handle to a job, which uniquely identifies a job scheduled in the job system.

### Properties

| Property | Description |
| --- | --- |
| IsCompleted | Determines if a task is running. |

### Public Methods

| Method | Description |
| --- | --- |
| Complete | Ensures that a job has completed. |

### Static Methods

| Method | Description |
| --- | --- |
| CheckFenceIsDependencyOrDidSyncFence | CheckFenceIsDependencyOrDidSyncFence. |
| CombineDependencies | Combines multiple dependencies into a single dependency. |
| CompleteAll | Ensures that all jobs have completed. |
| ScheduleBatchedJobs | Makes Schedule methods available to worker threads. |
