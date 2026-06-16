<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClosestPointCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct used to set up a closest point command to be performed asynchronously during a job.

When you use this struct to schedule a batch of closest commands, they are performed asynchronously and in parallel to each other. The results of the closest points are written to the results buffer. Because the results are written asynchronously, the results buffer cannot be accessed until the job has been completed.

The result for a command at index N in the command buffer is stored at index N in the results buffer.

Additional resources: Physics.ClosestPoint.

```csharp
using Unity.Collections;
using Unity.Jobs;
using UnityEngine;public class ClosestPoint : MonoBehaviour
{
    private void Start()
    {
        var collider = new GameObject().AddComponent<BoxCollider>();
        // Perform a single closest point using ClosestPointCommand and wait for it to complete
        // Set up the command and result buffers
        var results = new NativeArray<Vector3>(1, Allocator.TempJob);        var commands = new NativeArray<ClosestPointCommand>(1, Allocator.TempJob);        commands[0] = new ClosestPointCommand(Vector3.one * 5, collider.GetInstanceID(), Vector3.zero, Quaternion.identity, collider.transform.lossyScale);        // Schedule the batch of closest points
        JobHandle handle = ClosestPointCommand.ScheduleBatch(commands, results, 1, default(JobHandle));        // Wait for the batch processing job to complete
        handle.Complete();        // Copy the result. If the point is inside of the Collider, it is returned as a result
        Vector3 closestPoint = results[0];        // Dispose of the buffers
        results.Dispose();
        commands.Dispose();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| colliderEntityId | The EntityId of the Collider that you find the closest point on. |
| point | Location you want to find the closest point to. |
| position | The position of the Collider. |
| rotation | The rotation of the Collider. |
| scale | The global scale of the Collider. |

### Constructors

| Constructor | Description |
| --- | --- |
| ClosestPointCommand | Obsolete. Use the constructor with EntityId instead. |

### Static Methods

| Method | Description |
| --- | --- |
| ScheduleBatch | Schedule a batch of closest points which are performed in a job. |
