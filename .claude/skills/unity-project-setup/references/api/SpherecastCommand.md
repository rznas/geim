<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpherecastCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this struct to set up a sphere cast command that is performed asynchronously during a job.

When you use this struct to schedule a batch of sphere casts, the sphere casts are performed asynchronously and in parallel. The results of each sphere casts are written to the results buffer. Since the results are written asynchronously, you cannot access the results buffer until the job is completed.

The results for a command at index N in the command buffer are stored at index N * maxHits in the results buffer.

Spherecast command also allows you to control whether or not Trigger colliders and back-face triangles generate a hit. Use QueryParameters to control hit flags.

Note: Only BatchQuery.ExecuteSpherecastJob is logged into the profiler. Query count information is not logged.

Additional resources: Physics.Spherecast.

```csharp
using Unity.Collections;
using Unity.Jobs;
using UnityEngine;public class SpherecastExample : MonoBehaviour
{
    void Start()
    {
        // Perform a single sphere cast using SpherecastCommand and wait for it to complete
        // Set up the command and result buffers
        var results = new NativeArray<RaycastHit>(2, Allocator.TempJob);
        var commands = new NativeArray<SpherecastCommand>(1, Allocator.TempJob);        // Set the data of the first command
        Vector3 origin = Vector3.forward * -10;
        Vector3 direction = Vector3.forward;
        float radius = 0.5f;        commands[0] = new SpherecastCommand(origin, radius, direction, QueryParameters.Default);        // Schedule the batch of sphere casts
        var handle = SpherecastCommand.ScheduleBatch(commands, results, 1, 2, default(JobHandle));        // Wait for the batch processing job to complete
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
| direction | The direction of the sphere cast. |
| distance | The maximum distance the sphere should check for collisions. |
| origin | The starting point of the sphere cast in world coordinates. |
| physicsScene | The physics scene this command is run in. |
| queryParameters | Structure for specifying additional parameters for a batch query such as layer mask, hit triggers and hit backfaces. |
| radius | The radius of the casting sphere. |

### Constructors

| Constructor | Description |
| --- | --- |
| SpherecastCommand | Creates a SpherecastCommand. |

### Static Methods

| Method | Description |
| --- | --- |
| ScheduleBatch | Schedules a batch of sphere casts to perform in a job. |
