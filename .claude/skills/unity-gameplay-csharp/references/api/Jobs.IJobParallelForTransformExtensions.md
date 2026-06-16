<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Jobs.IJobParallelForTransformExtensions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains extension methods for IJobParallelForTransform.

While IJobParallelForTransform.Execute defines how a job should process a single data element, the methods in this extension class actually add an instance of the job to the work queue. Use IJobParallelForTransformExtensions.ScheduleByRef to request asynchronous execution, or IJobParallelForTransformExtensions.RunByRef to execute the job immediately on the main thread.

Additional resources: IJobParallelForTransform.

```csharp
public struct ApplyVelocityJobParallelForTransform : IJobParallelForTransform
{
    // Jobs declare all data that will be accessed in the job
    // By declaring it as read only, multiple jobs are allowed to access the data in parallel
    [ReadOnly]
    public NativeArray<Vector3> velocity;

    // Delta time must be copied to the job since jobs generally don't have a concept of a frame.
    // The main thread waits for the job same frame or next frame, but the job should do work deterministically
    // independent on when the job happens to run on the worker threads.
    public float deltaTime;

    // The code actually running on the job
    public void Execute(int index, TransformAccess transform)
    {
        // Move the transforms based on delta time and velocity
        var pos = transform.position;
        pos += velocity[index] * deltaTime;
        transform.position = pos;
    }
}

public void ApplyVelocity_ParallelForTransform()
{
    // Create some objects whose transforms will be processed
    var gameObjects = new GameObject[500];
    var transforms = new Transform[500];
    for (int i = 0; i < transforms.Length; ++i)
    {
        gameObjects[i] = new GameObject($"Test Object {i}");
        transforms[i] = gameObjects[i].transform;
    }

    var transformAccessArray = new TransformAccessArray(transforms);

    var velocity = new NativeArray<Vector3>(transforms.Length, Allocator.Persistent);

    for (var i = 0; i < velocity.Length; ++i)
        velocity[i] = new Vector3(0f, 10f, 0f);

    // Initialize the job data
    var job = new ApplyVelocityJobParallelForTransform()
    {
        deltaTime = Time.deltaTime,
        velocity = velocity
    };

    // If this job required a previous job to complete before it could safely begin execution,
    // we'd use its handle here. For this simple case, there are no job dependencies,
    // so a default JobHandle is sufficient.
    JobHandle dependencyJobHandle = default;

    // Schedule a parallel-for-transform job.
    // The method takes a TransformAccessArray which contains the Transforms that will be acted on in the job.
    JobHandle jobHandle = job.ScheduleByRef(transformAccessArray, dependencyJobHandle);

    // Ensure the job has completed.
    // It is not recommended to Complete a job immediately,
    // since that reduces the chance of having other jobs run in parallel with this one.
    // You optimally want to schedule a job early in a frame and then wait for it later in the frame.
    // Ideally this job's JobHandle would be passed as a dependency to another job that consumes the
    // output of this one. If the output of this job must be read from the main thread, you should call
    // Complete() on this job handle just before reading it.
    jobHandle.Complete();

    // Once the job is complete, the expected processing should have occurred.
    // Note that accessing the value of a Transform component on the main thread automatically
    // completes any IJobParallelForTransform which is currently writing to that Transform.
    for (var i = 0; i < velocity.Length; i++)
        Assert.AreEqual(Time.deltaTime * velocity[i].y, transforms[i].position.y);

    // Native containers must be disposed manually.
    velocity.Dispose();
    transformAccessArray.Dispose();
}
```

### Static Methods

| Method | Description |
| --- | --- |
| EarlyJobInit | Gathers and caches reflection data for the internal job system's managed bindings. |
| RunReadOnly | Runs an IJobParallelForTransform job immediately on the main thread, with read-only access to the transform data. |
| RunReadOnlyByRef | Runs an IJobParallelForTransform job immediately on the main thread, with read-only access to the transform data. |
| Schedule | Schedules an IJobParallelForTransform job with read-write access to the transform data. |
| ScheduleByRef | Schedules an IJobParallelForTransform job with read-write access to the transform data. |
| ScheduleReadOnly | Schedules an IJobParallelForTransform job with read-only access to the transform data. |
| ScheduleReadOnlyByRef | Schedules an IJobParallelForTransform job with read-only access to the transform data. |
