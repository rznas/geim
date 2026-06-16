<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Jobs.IJobParallelForTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An interface that allows you to perform the same independent operation for each position, rotation and scale of all the transforms passed into a job.

This job type is conceptually similar to IJobFor, but instead of iterating over a range of arbitrary data, it iterates over an array of transform data. Because UnityEngine.Transform is a managed type and can't be safely manipulated by job code, this job type offers a workaround to that limitation.

Transform data is provided to the job in through UnityEngine.Jobs.TransformAccessArray, which wraps an array of UnityEngine.Transform instances in an unmanaged UnityEngine.TransformAccess type and allows the underlying data to be safely processed in parallel by worker threads.

This job type has the following options to schedule work:

- IJobParallelForTransformExtensions.RunReadOnlyByRef runs the job on the main thread and finishes immediately, with read-only access to the transform data.
- IJobParallelForTransformExtensions.ScheduleReadOnlyByRef schedules the job to run asynchronously, distributing the work across multiple worker threads. This scheduling option can give the best performance, but race conditions can occur if the job writes to shared or global data without proper synchronization.
- IJobForExtensions.ScheduleByRef is the same as above, but the job has read/write access to the transform data.

`Execute(int index, TransformAccess transform)` is executed once for each index from 0 to the provided length, with the corresponding transform data available through the provided parameter.

`RunReadOnlyByRef` guarantees that the the job's `Execute(int index, TransformAccess transform)` method is invoked sequentially. `ScheduleReadOnlyByRef` and `ScheduleByRef` don't invoke the job's `Execute` method sequentially because it's called from multiple worker threads in parallel to each other.

Each iteration must be independent from other iterations and the safety system enforces this rule for you. The indices have no guaranteed order and are executed on multiple cores in parallel. 

For jobs that request read/write access to transform data, Unity automatically splits and sorts the provided transform data into chunks that can be safely processed in parallel. All transforms from the same transform hierarchy will be processed by a single worker thread, to ensure that writing world-space transform data doesn't cause a race condition. However, the order in which transforms within a hierarchy are processed is not guaranteed.

You can use the returned `JobHandle` to check that the job has completed, or pass it to other jobs as a dependency. When you pass a `JobHandle` as a dependency, it ensures that the jobs are executed one after another on the worker threads.

Additional resources: UnityEngine.Jobs.IJobParallelForTransformExtensions.

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

### Public Methods

| Method | Description |
| --- | --- |
| Execute | Performs work against a specific iteration index and transform. |
