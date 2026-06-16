<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshFilter-mesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns either a new mesh or a duplicate of the existing mesh, and assigns it to the mesh filter.

If no mesh is assigned to the mesh filter a new mesh will be created and assigned.

If a mesh is assigned to the mesh filter already, then the first query of `mesh` property will create a duplicate of it, and this copy will be returned. Further queries of `mesh` property will return this duplicated mesh instance. Once `mesh` property is queried, link to the original shared mesh is lost and MeshFilter.sharedMesh property becomes an alias to `mesh`. If you want to avoid this automatic mesh duplication, use MeshFilter.sharedMesh instead.

By using `mesh` property you can modify the mesh for a single object only. The other objects that used the same mesh will not be modified.

It is your responsibility to destroy the automatically instantiated mesh when the game object is being destroyed. Resources.UnloadUnusedAssets also destroys the mesh but it is usually only called when loading a new level.

Consider `mesh` property as a shortcut for the following code:

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Mesh mesh = GetComponent<MeshFilter>().sharedMesh;
        Mesh mesh2 = Instantiate(mesh);
        GetComponent<MeshFilter>().sharedMesh = mesh2;
    }
}
```

Which is called on first query of `mesh` property.

**Note:**
 If MeshFilter is a part of an asset object, quering `mesh` property is not allowed and only asset mesh can be assigned.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Distorts the mesh vertically.
    void Update()
    {
        // Get instantiated mesh
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        // Randomly change vertices
        Vector3[] vertices = mesh.vertices;
        int p = 0;
        while (p < vertices.Length)
        {
            vertices[p] += new Vector3(0, Random.Range(-0.3F, 0.3F), 0);
            p++;
        }
        mesh.vertices = vertices;
        mesh.RecalculateNormals();
    }
}
```

Additional resources: Mesh class.
