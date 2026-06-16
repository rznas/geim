<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CapsulecastCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this struct to set up a capsule cast command that is performed asynchronously during a job.

When you use this struct to schedule a batch of capsule casts, the capsule casts are performed asynchronously and in parallel. The results of each capsule cast is written to the results buffer. Since the results are written asynchronously, you cannot access the results buffer until the job is completed.

The results for a command at index N in the command buffer are stored at index N * maxHits in the results buffer.

Capsulecast command also allows you to control whether or not Trigger colliders and back-face triangles generate a hit. Use QueryParameters to control hit flags.

Note: Only BatchQuery.ExecuteCapsulecastJob is logged into the profiler. Query count information is not logged.

Additional resources: Physics.Capsulecast.

```csharp
using Unity.Collections;
using Unity.Jobs;
using UnityEngine;public class CapsulecastExample : MonoBehaviour
{
    void Start()
    {
        // Perform a single capsule cast using CapsulecastCommand and wait for it to complete
        // Set up the command and result buffers
        var results = new NativeArray<RaycastHit>(2, Allocator.TempJob);
        var commands = new NativeArray<CapsulecastCommand>(1, Allocator.TempJob);        // Set the data of the first command
        Vector3 point1 = Vector3.up * -0.5f;
        Vector3 point2 = Vector3.up * 0.5f;
        Vector3 direction = Vector3.forward;
        float radius = 0.5f;        commands[0] = new CapsulecastCommand(point1, point2, radius, direction, QueryParameters.Default);        // Schedule the batch of capsulecasts
        var handle = CapsulecastCommand.ScheduleBatch(commands, results, 1, 2, default(JobHandle));        // Wait for the batch processing job to complete
        handle.Complete();        // If batchedHit.collider is not null there was a hit
        foreach (var hit in results)
        {
            if (hit.collider != null)
            {
                // Do something with results
            }
        }        // Dispose the buffers
        results.Dispose();
        commands.Dispose();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| direction | The direction of the capsule cast. |
| distance | The maximum distance the capsule cast checks for collision. |
| physicsScene | The physics scene this command is run in. |
| point1 | The center of the sphere at the start of the capsule. |
| point2 | The center of the sphere at the end of the capsule. |
| queryParameters | Structure for specifying additional parameters for a batch query such as layer mask, hit triggers and hit backfaces. |
| radius | The radius of the capsule. |

### Constructors

| Constructor | Description |
| --- | --- |
| CapsulecastCommand | Creates a CapsulecastCommand. |

### Static Methods

| Method | Description |
| --- | --- |
| ScheduleBatch | Schedules a batch of capsule casts to perform in a job. |
