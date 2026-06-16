<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.IndexFormat.UInt32.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

32 bit mesh index buffer format.

This format supports meshes with up to 4 billion vertices.

Note that GPU support for 32 bit indices is not guaranteed on all platforms; for example Android devices with Mali-400 GPU do not support them. When using 32 bit indices on such a platform, a warning message will be logged and mesh will not render.

Additional resources: Mesh.indexFormat, ModelImporter.indexFormat, SystemInfo.supports32bitsIndexBuffer.
