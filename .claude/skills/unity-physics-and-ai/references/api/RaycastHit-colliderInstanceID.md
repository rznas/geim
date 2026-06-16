<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RaycastHit-colliderInstanceID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Instance ID of the Collider that was hit.

Provides a reference to the collider that was hit in a way that is accessible from jobs. For more information on creating jobs see Create Jobs.

```csharp
using Unity.Collections;
using Unity.Jobs;
using UnityEngine;public class BatchExample : MonoBehaviour
{
    public struct CollisionJob : IJob
    {
        public int colliderID;
        public NativeArray<RaycastHit> results;        public void Execute()
        {
            // This is where we check what we collided with and do any appropriate actions
            // If you tried accessing RaycastHit.collider you would get an error
            if (colliderID == results[0].colliderInstanceID)
                Debug.Log("Detected the a hit with the requested collider");
        }
    }
    void Start()
    {
        // We create the raycast command buffer and an array to store the RaycastHits
        NativeArray<RaycastCommand> commands = new NativeArray<RaycastCommand>(1, Allocator.TempJob);
        NativeArray<RaycastHit> results = new NativeArray<RaycastHit>(1, Allocator.TempJob);        var boxCollider = new GameObject().AddComponent<BoxCollider>();        // Create a new command for the buffer, pointing at the collider we created
        commands[0] = new RaycastCommand(Vector3.up * 2, Vector3.down);        // Schedule the commands in the buffer and store results in the 'results' array
        var batchHandle = RaycastCommand.ScheduleBatch(commands, results, 1, 1);        // This job is for doing something on the other thread when the collider of interest was hit
        var job = new CollisionJob();
        job.colliderID = boxCollider.GetInstanceID();
        job.results = results;        //Schedule the job to start after batchHandle has finished
        var jobHandle = job.Schedule(batchHandle);
        jobHandle.Complete();        commands.Dispose();
        results.Dispose();
    }
}
```
