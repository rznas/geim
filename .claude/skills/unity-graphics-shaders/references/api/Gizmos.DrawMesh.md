<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos.DrawMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mesh | The Mesh to draw as a gizmo. Mesh objects can be created and managed, or retrieved through the MeshFilter component. |
| position | The mesh position in world space. The default position is zero. |
| rotation | The mesh orientation in world space. The default is identity quaternion. |
| scale | Mesh scale in world space (default is scale of 1). |
| submeshIndex | The submesh to draw. The default is -1, which draws the whole mesh. |

### Description

Draws a mesh gizmo at the specified transform.

The mesh gizmo is drawn with the currently set Gizmos.color. Additional resources: DrawWireMesh.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    Mesh mesh = null;    void OnDrawGizmosSelected()
    {
        // Draws a yellow Cube at the position of the object rotated by 45 degrees around the Y axis.
        if (mesh is null)
            mesh = Resources.GetBuiltinResource<Mesh>("Cube.fbx");
        Gizmos.color = Color.yellow;
        Gizmos.DrawMesh(mesh, transform.position, Quaternion.Euler(0f, 45f, 0f));
    }
}
```
