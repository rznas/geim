<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unwrapping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Utility class for computing mesh UVs.

This class allows you to compute UVs for procedurally generated meshes. Computing UVs is also called "unwrapping".

Additional resources: Mesh class, Generating Lightmap UVs.

### Static Methods

| Method | Description |
| --- | --- |
| GeneratePerTriangleUV | Will generate per-triangle uv (3 UVs for each triangle) with default settings. |
| GenerateSecondaryUVSet | Compute a unique UV layout for a Mesh, and store it in Mesh.uv2. |
