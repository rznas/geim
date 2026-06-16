<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.SubMeshDescriptor-indexStart.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Starting point inside the whole Mesh index buffer where the face index data is found.

This property, together with indexCount, determines which part of the whole index buffer is used by a particular sub-mesh. Values in the index buffer are interpreted according to the topology property, for example the usual MeshTopology.Triangles topology needs three indices for each triangle.

Additional resources: indexCount, Mesh.SetSubMesh, Mesh.GetSubMesh, Mesh.SetIndexBufferParams, Mesh.SetIndexBufferData.
