<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshRenderer-enlightenVertexStream.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Vertex attributes that override the primary mesh when the MeshRenderer uses lightmaps in the Realtime Global Illumination system.

This vertex stream is used exclusively for UVs for real-time lightmaps.

When Unity renders a `MeshRenderer` that uses real-time lightmaps, Unity streams the data in `MeshRenderer.enlightenVertexStream` to `TEXCOORD2` instead of the data in Mesh.uv3]. For more information, see Lightmap UVs.

This data is not serialized. Unity calculates the UVs for the Realtime Global Illumination system during the precompute stage.
