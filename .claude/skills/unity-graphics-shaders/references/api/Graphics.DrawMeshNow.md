<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.DrawMeshNow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | The Mesh to draw. |
| position | Position of the mesh. |
| rotation | Rotation of the mesh. |
| matrix | The transformation matrix of the mesh (combines position, rotation and other transformations). |
| materialIndex | Subset of the mesh to draw. |

### Description

Draw a mesh immediately.

This function will draw a given mesh immediately. Currently set shader and material (see Material.SetPass) will be used.

The mesh will be just drawn once, it won't be per-pixel lit and will not cast or receive real-time shadows. If you want full integration with lighting and shadowing, use Graphics.DrawMesh instead.

```csharp
using UnityEngine;
using System.Collections;// Attach this script to a Camera
public class ExampleClass : MonoBehaviour {
    public Mesh mesh;
    public Material mat;
    public void OnPostRender() {
        // set first shader pass of the material
        mat.SetPass(0);
        // draw mesh at the origin
        Graphics.DrawMeshNow(mesh, Vector3.zero, Quaternion.identity);
    }
}
```

Additional resources: Graphics.DrawMesh, Material.SetPass.
