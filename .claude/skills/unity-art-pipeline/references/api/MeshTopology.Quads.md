<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MeshTopology.Quads.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Connects indices in groups of four to form quadrilateral faces.

Use the `Quads` topology to construct meshes made of four-sided polygons, where each quad connects four vertices to create a rectangular shape.

Unity often emulates quad topology, which means it converts quad meshes to triangle topology during processing. For better performance and simplicity, use triangle topology directly. Use quads only when you need to, for example if you work with tessellation shaders that operate on quad patches.
