<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SubMeshDescriptor-baseVertex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Offset that is added to each value in the index buffer, to compute the final vertex index.

You can use the Base vertex to achieve meshes that are larger than 65535 vertices while using 16 bit index buffers, as long as each sub-mesh fits within its own 65535 vertex area. For example, if the index buffer values are 10,11,12 and `baseVertex` is set to 100000, then effectively vertices 100010, 100011 and 100012 will be used for rendering.

Additional resources: Mesh.SetSubMesh, Mesh.GetSubMesh, Mesh.SetIndexBufferParams, Mesh.SetIndexBufferData.
