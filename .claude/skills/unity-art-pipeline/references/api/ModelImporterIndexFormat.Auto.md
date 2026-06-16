<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterIndexFormat.Auto.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use 16 or 32 bit index buffer depending on mesh size.

Meshes that have less than 65536 vertices will use 16 bit index buffer, and larger meshes will use 32 bit one.

Note however that GPU support for 32 bit indices is not guaranteed on all platforms; for example Android devices with Mali-400 GPU do not support them. When using 32 bit indices on such a platform, a warning message will be logged and mesh will not render. If you need to use large meshes on such devices, set index format to UInt16, then the mesh will be split up into 64k vertex chunks at import time.

Additional resources: ModelImporter.indexFormat, Mesh.indexFormat.
