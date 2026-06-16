<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshUtility.Optimize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Optimizes the Mesh data to improve rendering performance.

This function causes the geometry and vertices of the mesh to be reordered internally in an attempt to improve vertex cache utilisation on the graphics hardware and thus rendering performance. This operation can take a few seconds or more for complex meshes and should only be used where the ordering of the geometry and vertices is not significant as both will change.

You should only use this function on meshes you generate procedurally in code, for regular mesh assets it is called automatically by the import pipeline when 'Optimize Mesh' is enabled in the mesh importer settings.

This function is effectively the same as calling Mesh.Optimize or Mesh.OptimizeIndexBuffers followed by Mesh.OptimizeReorderVertexBuffer on the mesh.

```csharp
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    void Start()
    {
        Mesh mesh = gameObject.GetComponent<MeshFilter>().mesh;
        MeshUtility.Optimize(mesh);
    }
}
```
