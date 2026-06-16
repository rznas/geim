<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshTopology.Points.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interprets indices as individual points without forming connected geometry.

Use the `Points` topology to render the vertices as isolated points within a mesh. This topology is particularly useful for creating point clouds, particle systems, and other similar effects.

To more easily map vertices to indices, set the mesh index buffer to an identity sequence, for example (0, 1, 2, 3, ...).
