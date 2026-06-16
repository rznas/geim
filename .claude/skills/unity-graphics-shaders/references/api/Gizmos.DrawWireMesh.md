<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos.DrawWireMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | The Mesh to draw the wireframe gizmo for. Mesh objects can be created and managed, or retrieved through the MeshFilter component. |
| position | The mesh position in world space. The default position is zero. |
| rotation | Mesh orientation in world space. The default is identity quaternion. |
| scale | Mesh scale in world space. The default is a scale of 1. |
| submeshIndex | Submesh to draw (default is -1, which draws whole mesh). |

### Description

Draws a wireframe of a mesh at the specified transform.

The wire mesh gizmo is drawn with the currently set Gizmos.color. Additional resources: DrawMesh.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    Mesh mesh = null;    void OnDrawGizmosSelected()
    {
        // Draws a red wireframe of a Cube at the position of the object rotated by 45 degrees around the Y axis.
        if (mesh is null)
            mesh = Resources.GetBuiltinResource<Mesh>("Cube.fbx");
        Gizmos.color = Color.red;
        Gizmos.DrawWireMesh(mesh, transform.position, Quaternion.Euler(0f, 45f, 0f));
    }
}
```
