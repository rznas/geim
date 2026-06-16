<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CompositeCollider2D.GeometryType.Polygons.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the Composite Collider 2D to generate closed outlines for the merged collider geometry consisting of convex polygon shapes.

The polygon geometry is equivalent to using an PolygonCollider2D with the polygon outlines from other colliders being merged then decomposed into multiple convex polygon shapes forming a closed outline composite. The interior of this closed outline registers collisions or triggers.

This is usually the least efficient geometry to use as it produces multiple shapes or edges. These multiple shapes cause unwanted collisions when two separate colliders come in contact with each other even when they are aligned perfectly. Only use this geometry type when you need to detect the interior of the composite outline, such as when you use triggers.

Any interior holes caused by forming the Composite Collider 2D does not register any collision or trigger.
