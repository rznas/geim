<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastCommand.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Struct used to set up a raycast command to be performed asynchronously during a job.

When you use this struct to schedule a batch of raycasts, they will be performed asynchronously and in parallel to each other. The results of the raycasts are written to the results buffer. Since the results are written asynchronously the results buffer cannot be accessed until the job has been completed.

The results for a command at index N in the command buffer are stored at index N * maxHits in the results buffer.

If maxHits is larger than the actual number of results for the command the result buffer will contain some invalid results which did not hit anything. The first invalid result is identified by the collider being null. The second and later invalid results are not written to by the raycast command so their colliders are not guaranteed to be null. When iterating over the results the loop should stop when the first invalid result is found.

Raycast command also controls whether or not Trigger colliders and back-face triangles generate a hit. If hitMultipleFaces is set to true, Raycast command returns multiple hits per Mesh. You should adjust maxHits and result array size accordingly to store all hits. For solid objects (Sphere, Capsule, Box, Convex), this returns a maximum of one result. Use QueryParameters to control hit flags.

Note: Only BatchQuery.ExecuteRaycastJob is logged into the profiler. Query count information is not logged.

Additional resources: Physics.Raycast, Physics.RaycastAll.

```csharp
using Unity.Collections;
using Unity.Jobs;
using UnityEngine;public class RaycastExample : MonoBehaviour
{
    [SerializeField] private int rayCount = 5;
    [SerializeField] private float spacing = 2.0f;
    [SerializeField] private float rayLength = 100f;    private void Start()
    {
        // Allocate raycast commands and results
        var commands = new NativeArray<RaycastCommand>(rayCount, Allocator.TempJob);
        var results = new NativeArray<RaycastHit>(rayCount, Allocator.TempJob);        // Set up raycast commands
        for (int i = 0; i < rayCount; i++)
        {
            Vector3 origin = new Vector3(i * spacing, 0, -10);
            Vector3 direction = Vector3.forward;
            commands[i] = new RaycastCommand(origin, direction, QueryParameters.Default);
        }        // Schedule and complete batch
        JobHandle handle = RaycastCommand.ScheduleBatch(commands, results, 1, default);
        handle.Complete();        // Process results
        for (int i = 0; i < rayCount; i++)
        {
            if (results[i].collider != null)
            {
                Debug.DrawLine(commands[i].from, results[i].point, Color.green, 5f);
                Debug.Log($"Ray {i} hit {results[i].collider.name} at {results[i].point}");
            }
            else
            {
                Debug.DrawRay(commands[i].from, commands[i].direction * rayLength, Color.red, 5f);
                Debug.Log($"Ray {i} missed.");
            }
        }        // Dispose memory
        results.Dispose();
        commands.Dispose();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| direction | The direction of the ray. |
| distance | The maximum distance the ray should check for collisions. |
| from | The starting point of the ray in world coordinates. |
| physicsScene | The physics scene this command is run in. |
| queryParameters | Structure for specifying additional parameters for a batch query such as layer mask, hit multiple mesh faces, hit triggers and hit backfaces. |

### Constructors

| Constructor | Description |
| --- | --- |
| RaycastCommand | Create a RaycastCommand. |

### Static Methods

| Method | Description |
| --- | --- |
| ScheduleBatch | Schedule a batch of raycasts to perform in a job. |
