<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.JobHandle.CombineDependencies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Combines multiple dependencies into a single dependency.

All job schedule methods for IJob or IJobParallelFor job types take a single dependency. Sometimes you might need to express dependencies against multiple running jobs at the same time. Use this method to combine a set of dependencies into a single dependency that can be passed to a job.

```csharp
// Schedule 3 jobs, jobs a and b can run in parallel to each other,
// job c will only run once both jobA and jobB has completed// Schedule job a
var jobA = new MyJob(...);
var jobAHandle = jobA.Schedule();// Schedule job b
var jobB = new MyJob(...);
var jobBHandle = jobB.Schedule();// For job c, combine dependencies of job a and b
// Then use that for scheduling the next job
var jobC = new DependentJob(...);
var dependency = JobHandle.CombineDependencies(jobAHandle, jobBHandle);
jobC.Schedule(dependency);
```
