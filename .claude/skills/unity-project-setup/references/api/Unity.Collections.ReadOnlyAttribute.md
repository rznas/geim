<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.ReadOnlyAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Marks a member of a struct used in a job as read-only.

Native containers are read-write by default when used in a job. This means that you can't schedule two jobs that reference the same containers simultaneously. Add the ReadOnly attribute to a native container field in a job struct to mark the container as read-only. This allows two jobs to run in parallel and read data from the same native container.

Additional resources: IJob, IJobParallelFor.

```csharp
using Unity.Jobs;
using Unity.Collections;
using UnityEngine;public struct MyJob : IJob
{
    [ReadOnly]
    public NativeArray<int> input;    public NativeArray<int> output;    public void Execute()
    {
        for (var i = 0; i < output.Length; ++i)
            output[i] = input[i];
    }
}public class ParallelReplicator : MonoBehaviour
{
    public void Update()
    {
        const int n = 10000;
        var original = new NativeArray<int>(n, Allocator.Persistent);
        var clone1 = new NativeArray<int>(n, Allocator.Persistent);
        var clone2 = new NativeArray<int>(n, Allocator.Persistent);        var job1 = new MyJob
        {
            input = original,
            output = clone1
        };
        var job2 = new MyJob
        {
            input = original,
            output = clone2
        };        var jobX = new MyJob
        {
            input = original,
            output = clone2
        };        // Run the jobs in parallel.
        var jobs = JobHandle.CombineDependencies(job1.Schedule(), job2.Schedule());        // jobX.Schedule(); // Not allowed, throws exception because job2 is writing into clone2.        jobs.Complete();        jobX.Schedule().Complete(); // Allowed, because job2 has been completed by now.        original.Dispose();
        clone1.Dispose();
        clone2.Dispose();
    }
}
```
