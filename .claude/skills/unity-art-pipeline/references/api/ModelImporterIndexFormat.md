<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterIndexFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Format of the imported mesh index buffer data.

Index buffer can either be 16 bit (supports up to 65535 vertices in a mesh), or 32 bit (supports up to 4 billion vertices). Default behavior is ModelImporterIndexFormat.Auto, which picks the format based on vertex count in the mesh.

Additional resources: ModelImporter.indexFormat, Mesh.indexFormat.

### Properties

| Property | Description |
| --- | --- |
| Auto | Use 16 or 32 bit index buffer depending on mesh size. |
| UInt16 | Use 16 bit index buffer. |
| UInt32 | Use 32 bit index buffer. |
