<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.IJobFor.Execute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The index of the for loop to perform work from. |

### Description

Performs work against a specific iteration index.

```csharp
struct ApplyVelocityJobFor : IJobFor
{
    // Jobs declare all data that will be accessed in the job
    // By declaring it as read only, multiple jobs are allowed to access the data in parallel
    [ReadOnly]
    public NativeArray<Vector3> velocity;

    // By default containers are assumed to be read & write
    public NativeArray<Vector3> position;

    // Delta time must be copied to the job since jobs generally don't have concept of a frame.
    // The main thread waits for the job same frame or next frame, but the job should do work deterministically
    // independent on when the job happens to run on the worker threads.
    public float deltaTime;

    // The code actually running on the job
    public void Execute(int i)
    {
        // Move the positions based on delta time and velocity
        position[i] = position[i] + velocity[i] * deltaTime;
    }
}

public void ApplyVelocity_For(bool scheduleParallel)
{
    var position = new NativeArray<Vector3>(500, Allocator.Persistent);

    var velocity = new NativeArray<Vector3>(500, Allocator.Persistent);
    for (var i = 0; i < velocity.Length; i++)
        velocity[i] = new Vector3(0, 10, 0);

    // Initialize the job data
    var job = new ApplyVelocityJobFor()
    {
        deltaTime = Time.deltaTime,
        position = position,
        velocity = velocity
    };

    // If this job required a previous job to complete before it could safely begin execution,
    // we'd use its handle here. For this simple case, there are no job dependencies,
    // so a default JobHandle is sufficient.
    JobHandle dependencyJobHandle = default;

    JobHandle velocityJobHandle = default;
    if (scheduleParallel)
    {
        // Schedule job to run on multiple worker threads, attempting to distribute work items evenly between them.
        // First parameter is how many for-each iterations to perform.
        // The second parameter is the batch size,
        //   essentially the no-overhead innerloop that just invokes Execute(i) in a loop.
        //   When there is a lot of work in each iteration then a value of 1 can be sensible.
        //   When there is very little work values of 32 or 64 can make sense.
        // The third parameter is a JobHandle to use for this job's dependencies.
        //   Dependencies are used to ensure that a job executes on worker threads after
        //   the dependency has completed execution.
        velocityJobHandle = job.ScheduleParallelByRef(position.Length,
            64, dependencyJobHandle);
    }
    else
    {
        // Schedule job to run at a later point, processing all elements on a single worker thread.
        // First parameter is how many for-each iterations to perform.
        // The second parameter is a JobHandle to use for this job's dependencies.
        //   Dependencies are used to ensure that a job executes on worker threads after the dependency has completed execution.
        //   In this case we don't need our job to depend on anything so we can use a default one.
        velocityJobHandle = job.ScheduleByRef(position.Length, dependencyJobHandle);
    }


    // Ensure the job has completed.
    // It is not recommended to Complete a job immediately,
    // since that reduces the chance of having other jobs run in parallel with this one.
    // You optimally want to schedule a job early in a frame and then wait for it later in the frame.
    // Ideally this job's JobHandle would be passed as a dependency to another job that consumes the
    // output of this one. If the output of this job must be read from the main thread, you should call
    // Complete() on this job handle just before reading it.
    velocityJobHandle.Complete();

    // Once the job is complete, the expected processing should have occurred.
    for (var i = 0; i < velocity.Length; i++)
        Assert.AreEqual(Time.deltaTime * velocity[i].y, position[i].y);

    // Native arrays must be disposed manually.
    position.Dispose();
    velocity.Dispose();
}
```
