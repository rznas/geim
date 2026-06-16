<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-isReadable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if the Mesh is read/write enabled, or false if it is not.

When a Mesh is read/write enabled, Unity uploads the Mesh data to GPU-addressable memory, but also keeps it in CPU-addressable memory. When a Mesh is not read/write enabled, Unity uploads the Mesh data to GPU-addressable memory, and then removes it from CPU-addressable memory.

You can set this value using the Read/Write Enabled checkbox when importing a model to Unity. To set the value to false at run time, set the `markNoLongerReadable` argument of Mesh.UploadMeshData.

In most cases, you should disable this option to save runtime memory usage. You should only enable it under the following circumstances:

- When you read from or write to the Mesh data in your code.
- When you pass the Mesh to `StaticBatchingUtility.Combine()` to combine the Mesh at run time.
- When you pass the mesh to CanvasRenderer.SetMesh.
- When you use the Mesh to bake a NavMesh using the NavMesh building components at run time.
- When the Mesh is convex, you use the Mesh with a Mesh Collider, and the Mesh Collider's Transform has negative scaling (for example, (–1, 1, 1)).
- When you use the Mesh with a Mesh Collider, and the Mesh Collider's transform is skewed or sheared (for example, when a rotated Transform has a scaled parent Transform).
- When you use the Mesh with a Mesh Collider, and the Mesh Collider's Cooking Options flags are set to any value other than the default.
- When using a Mesh with a Particle System's Shape module or Renderer module when not using GPU instancing.

Note that the Particle System will automatically change Meshes to readable when assigned through the inspector

Notes: When Unity creates a Mesh from script, this value is initially set to true. Meshes not marked readable will throw an error on accessing any data arrays from script at runtime. Access is always allowed in the Unity Editor outside of the game and rendering loop, regardless of this setting.

Additional resources: StaticBatchingUtility.Combine.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Mesh mesh = GetComponent<MeshFilter>().sharedMesh;
        print(mesh.isReadable);
    }
}
```
