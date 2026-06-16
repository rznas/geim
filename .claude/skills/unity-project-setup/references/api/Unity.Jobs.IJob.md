<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Jobs.IJob.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An interface that allows you to schedule a single job that runs in parallel to other jobs and the main thread.

After a job is scheduled, the job's Execute method is invoked on a worker thread. You can use the returned JobHandle to make sure that the job has completed. You can also pass the JobHandle to other jobs as a dependency, which ensures that jobs are executed one after another on the worker threads.

Additional resources: IJobForExtensions.ScheduleByRef

```csharp
struct ApplyVelocityJob : IJob
{
    // Jobs declare all data that will be accessed in the job
    // By declaring it as read only, multiple jobs are allowed to access the data in parallel
    [ReadOnly]
    public NativeArray<Vector3> velocity;

    // By default containers are assumed to be read & write
    public NativeArray<Vector3> position;

    // Delta time must be copied to the job since jobs generally don't have concept of a frame.
    // The main thread waits for the job on the same frame or the next frame, but the job should
    // perform work in a deterministic and independent way when running on worker threads.
    public float deltaTime;

    // The code actually running on the job
    public void Execute()
    {
        // Move the positions based on delta time and velocity
        for (var i = 0; i < position.Length; i++)
            position[i] = position[i] + velocity[i] * deltaTime;
    }
}

public void ApplyVelocity()
{
    var position = new NativeArray<Vector3>(500, Allocator.Persistent);

    var velocity = new NativeArray<Vector3>(500, Allocator.Persistent);
    for (var i = 0; i < velocity.Length; i++)
        velocity[i] = new Vector3(0, 10, 0);


    // Initialize the job data
    var job = new ApplyVelocityJob()
    {
        deltaTime = Time.deltaTime,
        position = position,
        velocity = velocity
    };

    // If this job required a previous job to complete before it could safely begin execution,
    // we'd use its handle here. For this simple case, there are no job dependencies,
    // so a default JobHandle is sufficient.
    JobHandle dependencyJobHandle = default;

    // Schedule the job, returns the JobHandle which can be waited upon later on
    JobHandle jobHandle = job.ScheduleByRef(dependencyJobHandle);

    // Ensure the job has completed
    // It is not recommended to Complete a job immediately,
    // since that gives you no actual parallelism.
    // You optimally want to schedule a job early in a frame and then wait for it later in the frame.
    // Ideally this job's JobHandle would be passed as a dependency to another job that consumes the
    // output of this one. If the output of this job must be read from the main thread, you should call
    // Complete() on this job handle just before reading it.
    jobHandle.Complete();

    // Once the job is complete, the expected processing should have occurred.
    for (var i = 0; i < velocity.Length; i++)
        Assert.AreEqual(Time.deltaTime * velocity[i].y, position[i].y);

    // Native arrays must be disposed manually
    position.Dispose();
    velocity.Dispose();
}
```

### Public Methods

| Method | Description |
| --- | --- |
| Execute | Implement this method to perform work on a worker thread. |
