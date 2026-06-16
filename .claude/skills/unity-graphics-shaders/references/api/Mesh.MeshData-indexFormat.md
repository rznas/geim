<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.MeshData-indexFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the format of the index buffer data in the `MeshData`. (Read Only)

A Mesh's index buffer format can be either 16 bit (which supports up to 65535 vertices), or 32 bit (which supports up to 4 billion vertices). The default index format is 16 bit, which requires less memory and bandwidth and is more widely supported than 32 bit. Note that GPU support for 32 bit indices is not guaranteed on all platforms; for example Android devices with Mali-400 GPUs do not support them. When using 32 bit indices on such a platform, Unity logs a warning message and does not render the Mesh. Additional resources: IndexFormat, Mesh.indexFormat, GetIndices, Mesh.AcquireReadOnlyMeshData.
