<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsDestructor.FragmentResult-unbrokenGeometryIslands.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The geometry islands indicating how polygons are connected together. Each generated polygon belongs to a unique island defining a set of polygons that are connected together as they share edges. The array returned contains a series of ranges where each range is a unique connected island where the range indicates both the start index and length of the original polygon indices. The number of discovered unique islands is defined by the size of the returned array.

 This is only populated when fragmenting with a mask with PhysicsDestructor.Fragment; otherwise it returns an empty array.
