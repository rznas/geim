<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsDestructor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides the ability to destruct (fragment and Slice) geometry.

### Static Methods

| Method | Description |
| --- | --- |
| Fragment | Fragment the specified target geometry using the specified fragment points. The fragment points define areas where polygon fragments will be produced from the target geometry. If the resulting polygon fragments have more polygon vertices than can fit into a single PolygonGeometry then the fragment will be split into multiple polygon fragments. The maximum number of vertices a single polygon fragment can have is defined by PhysicsConstants.MaxPolygonVertices. If even a single fragment point overlaps the target geometry then all results will be returned in PhysicsDestructor.FragmentResult.brokenGeometry. If none of the fragment points overlap the target geometry then all the results will be returned in PhysicsDestructor.FragmentResult.unbrokenGeometry. See FragmentResult. |
| Slice | Slice the specified target geometry using the specified slice line. The target geometry is sliced using the specified ray as defined by and . The specified line segment and are extended to infinity and so defines a 2D intersection plane. All valid target geometry will returned in either the PhysicsDestructor.SliceResult.leftGeometry or PhysicsDestructor.SliceResult.rightGeometry depending on its side of the line (sliced or not). Left and Right are defined as "looking" along the ray in the direction defined by with Left being anything to the left of the ray and Right being anything to the right of the ray. See SliceResult. |
