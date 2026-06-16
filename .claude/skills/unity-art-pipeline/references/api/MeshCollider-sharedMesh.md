<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshCollider-sharedMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The mesh object used for collision detection.

If prior to setting sharedMesh any of the vertices, indices or triangles of the mesh have been changed then the shapes of the MeshCollider will be rebuilt.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Assigns an arbitrary mesh collider to the current transform    [SerializeField] Mesh meshToCollide;    void Start()
    {
        if (!meshToCollide)
        {
            Debug.LogError("Assign a mesh in the inspector");
            return;
        }
        MeshCollider meshCollider = gameObject.AddComponent<MeshCollider>();
        meshCollider.sharedMesh = meshToCollide;
    }
}
```
