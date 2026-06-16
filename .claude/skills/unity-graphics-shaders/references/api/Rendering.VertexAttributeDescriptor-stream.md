<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VertexAttributeDescriptor-stream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Which vertex buffer stream the attribute should be in.

Unity supports up to 4 vertex streams, most meshes use one stream for all attributes. Default value is 0.

For a mesh to be compatible with a SkinnedMeshRenderer, it must have multiple vertex streams: one for deformed data (positions, normals, tangents), one for static data (colors and texture coordinates), and one for skinning data (blend weights and blend indices).

Additional resources: Mesh.SetVertexBufferParams.
