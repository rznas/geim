<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Tilemaps.TilemapCollider2D-useDelaunayMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When the value is true, the Collider uses an additional Delaunay triangulation step to produce the Collider mesh. When the value is false, this additional step does not occur.

Using Delaunay triangulation can reduce the number of shapes created in the Collider mesh and reduce the number of small triangle fans produced, both of which can improve overall physics performance.
