<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh-uv.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The texture coordinates (UVs) in the first channel.

This channel is also commonly called "UV0". It maps to the shader semantic `TEXCOORD0`. When you call Mesh.HasVertexAttribute, this channel corresponds to VertexAttribute.TexCoord0.

By default, Unity uses this channel to store UVs for commonly used textures: diffuse maps, specular maps, and so on.

Unity stores UVs in 0-1 space. [0,0] represents the bottom-left corner of the texture, and [1,1] represents the top-right. Values are not clamped; you can use values below 0 and above 1 if needed.

This property is supported for backwards compatibility, but the newer GetUVs and SetUVs functions allow you to access the same data in a more user-friendly way, and use a Vector3 or Vector4 value if you need to.

This property returns a copy of the data. This means that it causes a heap memory allocation. It also means that to make changes to the original data, you must update the copy and then reassign the updated copy to the mesh.

The following example demonstrates how to create an array to hold UV data, assign texture coordinates to it, and then assign it to the mesh.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Mesh mesh = GetComponent<MeshFilter>().mesh;
        Vector3[] vertices = mesh.vertices;
        Vector2[] uvs = new Vector2[vertices.Length];        for (int i = 0; i < uvs.Length; i++)
        {
            uvs[i] = new Vector2(vertices[i].x, vertices[i].z);
        }
        mesh.uv = uvs;
    }
}
```

Additional resources: GetUVs, SetUVs, AcquireReadOnlyMeshData.
