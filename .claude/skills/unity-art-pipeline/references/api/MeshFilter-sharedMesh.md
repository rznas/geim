<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshFilter-sharedMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the shared mesh of the mesh filter.

It is recommended to use this function only for **reading mesh data** and not for writing, since you might modify imported assets and all objects that use this mesh will be affected. Also, be aware that is not possible to undo the changes done to this mesh.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Permanently scales the size of the mesh by a factor.    float scaleFactor = 2f;    void Start()
    {
        Mesh mesh = GetComponent<MeshFilter>().sharedMesh;        Vector3[] vertices = mesh.vertices;
        for (int p = 0; p < vertices.Length; p++)
        {
            vertices[p] *= scaleFactor;
        }
        mesh.vertices = vertices;
        mesh.RecalculateNormals();
    }
}
```
