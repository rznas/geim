<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-multithreading-burst.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Multithreading with Burst in Unity Web

Enable multithreading on the Web platform using the Burst compiler and learn best practices for authoring parallel C# jobs.

The Burst compiler enables multithreading on the Web platform by compiling C# jobs into highly optimized, native code. While standard C# jobs are restricted to the main thread because of limitations with the garbage collector, Burst-compiled jobs can run in parallel. This is because Burst-compiled code is independent of the garbage collector and uses a specific subset of C#.

For the mandatory prerequisites required for all multithreading, refer to Introduction to multithreading on the Web platform.

## Author a Burst-compiled job

**Note**: Multithreading on the Web platform requires Burst compiler package version 1.8.26 or newer.

The primary mechanism for multithreading C# code is the `BurstCompile` attribute, used with the C# job system.

The presence of this attribute, combined with your **project settings**, determines how the job system executes the code:

- Jobs with the `BurstCompile` attribute run on background worker threads.
- Jobs without the attribute are treated as standard C# and run on the main thread.
- If you disable **Enable Native C/C++ Multithreading**, all jobs fall back to executing on the main thread.

**Important**: Regardless of the configuration, you must schedule all jobs from the main thread.

The Burst compiler automatically validates jobs during the build process. You can also manually inspect jobs and identify errors using the Burst Inspector tool, available in the Unity Editor under **Jobs** > **Burst** > **Open Inspector**.

The following example demonstrates both a standard job and a Burst-compiled job. The standard job runs on the main thread, while the Burst-compiled job can run on multiple threads at the same time:

```csharp
using UnityEngine;
using Unity.Collections;
using Unity.Jobs;
using Unity.Burst;

// This job always executes on the main thread.
public struct ExampleJob : IJobFor
{
  [WriteOnly]
  public NativeArray<int> result;

  public void Execute(int i)
  {
     result[i] = i;
  }
}

// This job can execute on multiple threads.
[BurstCompile]
public struct BurstExampleJob : IJobFor
{
  [WriteOnly]
  public NativeArray<int> result;

  public void Execute(int i)
  {
     result[i] = i;
  }
}
```

## Performance optimizations

When using Burst-compiled jobs on the Web platform, consider the following performance optimization strategies.

### Delay job synchronization

Instead of immediately calling `JobHandle.Complete()` after scheduling a job, wait to synchronize on it in a later part of the frame, such as in `LateUpdate()`. This gives worker threads more time to process jobs before the main thread requires the results.

For a general example of this pattern, refer to Create and run a job.

### Avoid dependencies on Burst-compiled jobs

Avoid scheduling a non-Burst-compiled job that depends on a Burst-compiled job. This dependency forces an immediate synchronization, which causes the main thread to wait for the Burst job to finish. This can reduce thread utilization and degrade performance.

Instead, schedule the Burst-compiled job in `Update()` and sync it in `LateUpdate()`. Then, run the managed (non-Burst) code directly within the `LateUpdate()` callback after the sync is complete.

The following example demonstrates how to structure jobs to avoid an early sync:

```csharp
using UnityEngine;
using Unity.Collections;
using Unity.Jobs;
using Unity.Burst;


[BurstCompile]
public struct BurstExampleJob : IJobFor
{
  [WriteOnly]
  public NativeArray<int> result;

  public void Execute(int i)
  {
     result[i] = i;
  }
}

public struct ManagedJob: IJob
{
  public GameObject go;
  [ReadOnly]
  public NativeArray<int> input;

  public void Execute()
  {
    var jobExample = go.GetComponent<JobExample>();
    if (jobExample != null)
      jobExample.SomeMethod(input);
  }
}

public class JobExample : MonoBehaviour
{
    NativeArray<int> result;
    JobHandle handle = default;

    public void SomeMethod(NativeArray<int> array)
    {
       // Do something here.
    }

    void Update()
    {
      result = new NativeArray<int>(1000, Allocator.TempJob);
      JobHandle dependencyJobHandle = default;
      var jobData = new BurstExampleJob
      {
        Result = result
      }
      // On the Web Platform:
      // Only schedule Burst jobs in Update() for best performance.
      handle = jobData.ScheduleParallel(result.Length, 64, dependencyJobHandle);
    }

    void LateUpdate()
    {
       // On the Web Platform:
       // Schedule non-Burst jobs in LateUpdate to avoid early sync of BurstExampleJob.
       var managedJob = new ManagedJob
       {
          go = gameObject,
          input = result
       };
       var managedHandle = managedJob.Schedule(handle);
       managedHandle.Complete();

       result.Dispose();
    }
}
```

## Additional resources

- Introduction to NativeContainer
- Create and run a job
- Web performance considerations
- Debug and troubleshoot Web builds
