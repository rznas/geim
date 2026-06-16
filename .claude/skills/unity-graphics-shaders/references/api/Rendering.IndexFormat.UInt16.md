<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.IndexFormat.UInt16.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

16 bit mesh index buffer format.

This format supports meshes with up to 65535 vertices.

**Note:** the maximum possible vertex index (for example, 0xFFFF for a 16 bit index format) might not be usable. Some graphics APIs and GPUs skip rendering triangles with maximum vertex indices.

Additional resources: Mesh.indexFormat, ModelImporter.indexFormat.
