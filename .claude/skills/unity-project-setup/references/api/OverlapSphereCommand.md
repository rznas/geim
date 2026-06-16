<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/OverlapSphereCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct used to setup an overlap sphere command to be performed asynchronously during a job.

When you use this struct to schedule a batch of overlap sphere commands, the commands are performed asynchronously. The results of the overlap sphere are written to the results buffer. Because the results are written asynchronously, the results buffer can't be accessed until the job is complete.

The results for a command at index N in the command buffer are stored at index N * maxHits in the results buffer.

If maxHits is larger than the actual number of results for the command the result buffer will contain some invalid results which did not hit anything. The first invalid result is identified by the collider instance ID being 0. The second and later invalid results are not written to the overlap sphere command so their collider instance IDs are not guaranteed to be 0. When iterating over the results the loop should stop when the first invalid result is found.

Overlap sphere command also controls whether or not Trigger colliders generate a hit. You should adjust maxHits and result array size accordingly to store all hits. Use QueryParameters to control hit flags. QueryParameters.hitBackfaces and QueryParameters.hitMultipleFaces flags are not supported and won’t have any impact on overlap results.

Note: Only BatchQuery.ExecuteOverlapSphere is logged into the profiler. Query count information is not logged.

Additional resources: Physics.OverlapSphere, ColliderHit.

```csharp
using Unity.Collections;
using UnityEngine;public class SphereOverlap : MonoBehaviour
{
    //Print names of GameObject inside the sphere
    void BatchOverlapSphere()
    {
        var commands = new NativeArray<OverlapSphereCommand>(1, Allocator.TempJob);
        var results = new NativeArray<ColliderHit>(3, Allocator.TempJob);        commands[0] = new OverlapSphereCommand(Vector3.zero, 10f, QueryParameters.Default);        OverlapSphereCommand.ScheduleBatch(commands, results, 1, 3).Complete();        foreach (var hit in results)
            Debug.Log(hit.collider.name);        commands.Dispose();
        results.Dispose();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| physicsScene | The physics scene the command is run in. |
| point | The center of the sphere. |
| queryParameters | Structure for specifying additional parameters for a batch query such as layer mask or hit triggers. |
| radius | The radius of the sphere. |

### Constructors

| Constructor | Description |
| --- | --- |
| OverlapSphereCommand | Create an OverlapSphereCommand. |

### Static Methods

| Method | Description |
| --- | --- |
| ScheduleBatch | Schedule a batch of overlap sphere commands to perform in a job. |
