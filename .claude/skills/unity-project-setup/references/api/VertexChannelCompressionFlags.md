<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VertexChannelCompressionFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use these enum flags to specify which elements of a vertex to compress.

Default settings: Position and TexCoord1 are uncompressed because high precision is usually desired. Everything else is compressed to save memory and conserve bandwidth.

### Properties

| Property | Description |
| --- | --- |
| None | Vertex compression disabled. |
| Position | Position compression enabled. |
| Normal | Normal compression enabled. |
| Tangent | Tangent compression enabled. |
| Color | Color compression enabled. |
| TexCoord0 | Texture coordinate 0 compression enabled. |
| TexCoord1 | Texture coordinate 1 compression enabled. |
| TexCoord2 | Texture coordinate 2 compression enabled. |
| TexCoord3 | Texture coordinate 3 compression enabled. |
