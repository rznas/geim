<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.RenderMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rparams | The parameters Unity uses to render the mesh. |
| mesh | The Mesh to render. |
| submeshIndex | The index of a submesh Unity renders when the Mesh contains multiple Materials (submeshes). For a Mesh with a single Material, use value 0. |
| objectToWorld | The transformation matrix Unity uses to transform the mesh from object to world space. |
| prevObjectToWorld | The previous frame transformation matrix Unity uses to calculate motion vectors for the mesh. |

### Description

Renders a mesh with given rendering parameters.

`RenderMesh` renders a Mesh for the current frame. This Mesh is affected by Lights, can cast and receive shadows, and is affected by Projectors. This Mesh can be rendered by all Cameras or by a specific Camera.

Use `RenderMesh` to control Mesh rendering programmatically without the need to create and manage GameObjects. `RenderMesh` submits the Mesh for rendering, which means it does not render the Mesh immediately. Unity renders the Mesh as part of normal rendering process. If you want to render a mesh immediately, use Graphics.DrawMeshNow.

`RenderMesh` does not apply any changes you make to the Material properties of a Mesh between calls. This is because it does not render the Mesh immediately. If you want to render series of Meshes that have the same Material, but with slightly different properties (for example, to change color of each mesh), use MaterialPropertyBlock parameter.

This call creates internal resources while the Mesh is in the render queue. The allocation happens immediately and exists until the end of frame if the object is in the render queue for all cameras. Otherwise, the allocation exists until the specified Camera finishes rendering.

Additional resources: MaterialPropertyBlock.

The following example renders 10 Meshes with a given Material:

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    public Material material;
    public Mesh mesh;    void Update()
    {
        RenderParams rp = new RenderParams(material);
        for(int i=0; i<10; ++i)
            Graphics.RenderMesh(rp, mesh, 0, Matrix4x4.Translate(new Vector3(-4.5f+i, 0.0f, 5.0f)));
    }
}
```
