<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/OverlapBoxCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct used to set up an overlap box command to be performed asynchronously during a job.

When you use this struct to schedule a batch of overlap box commands, the commands are performed asynchronously. The results of the overlap box are written to the results buffer. Because the results are written asynchronously, the results buffer can't be accessed until the job is complete.

The results for a command at index N in the command buffer are stored at index N * maxHits in the results buffer.

If maxHits is larger than the actual number of results for the command the result buffer will contain some invalid results which did not hit anything. The first invalid result is identified by the collider instance ID being 0. The second and later invalid results are not written to the overlap box command so their collider instance IDs are not guaranteed to be 0. When iterating over the results the loop should stop when the first invalid result is found.

Overlap box command also controls whether or not Trigger colliders generate a hit. You should adjust maxHits and result array size accordingly to store all hits. Use QueryParameters to control hit flags. QueryParameters.hitBackfaces and QueryParameters.hitMultipleFaces flags are not supported and won’t have any impact on overlap results.

Note: Only BatchQuery.ExecuteOverlapBoxJob is logged into the profiler. Query count information is not logged.

Additional resources: Physics.OverlapBox, ColliderHit.

```csharp
using Unity.Collections;
using UnityEngine;public class BoxOverlap : MonoBehaviour
{
    //Print names of GameObjects inside the box
    void BatchOverlapBox()
    {
        var commands = new NativeArray<OverlapBoxCommand>(1, Allocator.TempJob);
        var results = new NativeArray<ColliderHit>(3, Allocator.TempJob);        commands[0] = new OverlapBoxCommand(Vector3.zero, Vector3.one, Quaternion.identity, QueryParameters.Default);        OverlapBoxCommand.ScheduleBatch(commands, results, 1, 3).Complete();        foreach (var hit in results)
            Debug.Log(hit.collider.name);        commands.Dispose();
        results.Dispose();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| center | The center of the box. |
| halfExtents | Half of the size of the box in each dimension. |
| orientation | The orientation of the box. |
| physicsScene | The physics scene this command is run in. |
| queryParameters | Structure for specifying additional parameters for a batch query such as layer mask or hit triggers. |

### Constructors

| Constructor | Description |
| --- | --- |
| OverlapBoxCommand | Create an OverlapBoxCommand. |

### Static Methods

| Method | Description |
| --- | --- |
| ScheduleBatch | Schedule a batch of overlap box commands to perform in a job. |
