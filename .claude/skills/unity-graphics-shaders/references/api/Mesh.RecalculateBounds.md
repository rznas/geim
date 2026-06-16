<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.RecalculateBounds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| flags | Flags controlling the function behavior, see MeshUpdateFlags. |

### Description

Recalculate the bounding volume of the Mesh and all of its sub-meshes with the vertex data.

After modifying vertices you should call this function to ensure the bounding volume is correct. Assigning triangles automatically recalculates the bounding volume.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        mesh.RecalculateBounds();
    }
}
```

Unity can only recalculate the bounding volume for Meshes that use the default VertexAttributeFormat.Float32 vertex position format. If your Mesh uses a non-standard vertex position data format, you must assign the bounds manually.

The bounds of a SkinnedMeshRenderer cannot be recalculated, and can only be changed by setting the SkinnedMeshRenderer.localBounds manually.

Additional resources: bounds.
