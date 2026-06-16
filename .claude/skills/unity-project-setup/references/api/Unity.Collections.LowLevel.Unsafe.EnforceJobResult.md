<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.EnforceJobResult.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enumerates the possible values returned by AtomicSafetyHandle methods that wait for all jobs accessing the native container associated with the handle to finish.

The members of this enum describe whether the job system had to wait for any jobs to finish.

The following methods use this enum as a return type:

- AtomicSafetyHandle.EnforceAllBufferJobsHaveCompleted
- AtomicSafetyHandle.EnforceAllBufferJobsHaveCompletedAndDisableReadWrite
- AtomicSafetyHandle.EnforceAllBufferJobsHaveCompletedAndRelease.

### Properties

| Property | Description |
| --- | --- |
| AllJobsAlreadySynced | Indicates that all jobs were already complete at the time of the wait request. |
| DidSyncRunningJobs | Indicates that the job system waited for at least one job to finish. |
| HandleWasAlreadyDeallocated | Indicates that the job system didn't wait because the AtomicSafetyHandle was invalid, likely because the associated container had already been deallocated. |
