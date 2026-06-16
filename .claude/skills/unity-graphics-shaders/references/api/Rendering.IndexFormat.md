<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.IndexFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Format of the mesh index buffer data.

Index buffer can either be 16 bit (supports up to 65535 vertices in a mesh), or 32 bit (supports up to 4 billion vertices). Default index format is 16 bit, since that takes less memory and bandwidth.

Note that GPU support for 32 bit indices is not guaranteed on all platforms; for example Android devices with Mali-400 GPU do not support them. When using 32 bit indices on such a platform, a warning message will be logged and mesh will not render.

**Note:** the maximum possible vertex index (for example, 0xFFFF for a 16 bit index format) might not be usable. Some graphics APIs and GPUs skip rendering triangles with maximum vertex indices.

Additional resources: Mesh.indexFormat, ModelImporter.indexFormat, Mesh.SetIndices.

### Properties

| Property | Description |
| --- | --- |
| UInt16 | 16 bit mesh index buffer format. |
| UInt32 | 32 bit mesh index buffer format. |
