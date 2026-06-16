<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshRenderer-additionalVertexStreams.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Vertex attributes in this mesh will override or add attributes of the primary mesh in the MeshRenderer.

This can be used for vertex painting tools, etc. This data is serialized.

 For example, if the primary mesh doesn't contain the Mesh.colors channel, the colors from additionalVertexStreams are used. If the primary mesh contains the colors channel and the additionalVertexStreams mesh also has colors, then colors from additionalVertexStreams are used.

 `MeshRenderer.additionalVertexStreams` isn't supported if you use either of the following:

- Dynamic batching
- GPU instancing
