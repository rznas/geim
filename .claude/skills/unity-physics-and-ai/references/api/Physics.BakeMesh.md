<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Physics.BakeMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| meshID | The instance ID of the mesh to bake collision data from. |
| convex | A flag to indicate whether to bake convex geometry or not. |
| meshEntityId | The EntityId of the mesh to bake collision data from. |

### Description

Prepares the mesh for use with a MeshCollider and uses default cooking options.

### Parameters

| Parameter | Description |
| --- | --- |
| meshID | The instance ID of the mesh to bake collision data from. |
| convex | A flag to indicate whether to bake convex geometry or not. |
| cookingOptions | The cooking options to use when you bake the mesh. |
| meshEntityId | The EntityId of the mesh to bake collision data from. |

### Description

Prepares the mesh for use with a MeshCollider.

In order for the mesh to be usable with the MeshCollider, the physics system must prepare it first, by creating the spatial search acceleration structures. This process is called baking.

Normally, the MeshCollider component requires the baked mesh when the user instantiates it, or when the user sets a new mesh to it with the sharedMesh property. Baking is a resource-intensive operation so you might want to run it when the moment is right (for example during a less resource-intensive part of the application), or to spread the load across all available cores if multiple meshes require baking. That said, the purpose of this function is to pre-bake the mesh for later use so that no further baking is required.

The mesh instance stores the baked mesh.

The baking process needs access to the mesh geometry. If the user invokes the BakeMesh method in the Player, the BakeMesh method requires the Read/Write property of the mesh to be enabled. However, using the BakeMesh method in the Editor doesn't require any extra settings, because the geometry is always available in the Editor.

The MeshCollider component reuses the baked mesh if, and only if, all of the following conditions are met:

- The MeshCollider's cookingOptions are exactly the same as were specified during baking,
- The MeshCollider's transform allows mesh sharing (*),
- The mesh geometry hasn't been changed since the last bake.

In this context, the MeshCollider's transform allows mesh sharing if:

- Its scaling is not negative and is not skewed, or
- Its scaling is negative but only when MeshCollider is not convex

Note: When you add a MeshCollider component to a GameObject with a MeshFilter component already present, the sharedMesh property is set automatically and this might trigger a re-bake.



Here is a simple example baking the mesh on the main thread:

```csharp
using UnityEngine;public class MinimalTest : MonoBehaviour
{
    public Mesh mesh;    private MeshCollider collider;    private MeshColliderCookingOptions cookingOptions =
        MeshColliderCookingOptions.UseFastMidphase | MeshColliderCookingOptions.CookForFasterSimulation;    private void OnEnable()
    {
        // Bake this Mesh to use later.
        Physics.BakeMesh(mesh.GetEntityId(), false, cookingOptions);
    }    public void FixedUpdate()
    {
        // If the collider wasn't yet created - create it now.
        if (collider == null)
        {
            // No mesh baking will happen here because the mesh was pre-baked, making instantiation faster.
            collider = new GameObject().AddComponent<MeshCollider>();
            collider.cookingOptions = cookingOptions;
            collider.sharedMesh = mesh;
        }
    }
}
```

BakeMesh is thread-safe, and does computations on the thread it was called from. However, don't call BakeMesh on the same mesh from multiple threads at the same time because that causes undefined behavior. You can use BakeMesh with the C# Job System. This example shows how to bake meshes across multiple threads so that MeshCollider instantiation takes less time on the main thread.

```csharp
using Unity.Collections;
using Unity.Jobs;
using UnityEngine;public struct BakeJob : IJobParallelFor
{
    private NativeArray<EntityId> meshIds;    public BakeJob(NativeArray<EntityId> meshIds)
    {
        this.meshIds = meshIds;
    }    public void Execute(int index)
    {
        Physics.BakeMesh(meshIds[index], false);
    }
}public class JobifiedBaking : MonoBehaviour
{
    public Mesh[] meshes;
    public int meshesPerJob = 10;    // Bake all the Meshes off of the main thread, and then instantiate on the main thread.
    private void OnEnable()
    {
        // You cannot access GameObjects and Components from other threads directly.
        // As such, you need to create a native array of EntityIds that BakeMesh will accept.
        NativeArray<EntityId> meshIds = new NativeArray<EntityId>(meshes.Length, Allocator.TempJob);        for (int i = 0; i < meshes.Length; ++i)
        {
            meshIds[i] = meshes[i].GetEntityId();
        }        // This spreads the expensive operation over all cores.
        var job = new BakeJob(meshIds);
        job.Schedule(meshIds.Length, meshesPerJob).Complete();        meshIds.Dispose();        // Now instantiate colliders on the main thread.
        for (int i = 0; i < meshes.Length; ++i)
        {
            new GameObject().AddComponent<MeshCollider>().sharedMesh = meshes[i];
        }
    }
}
```
