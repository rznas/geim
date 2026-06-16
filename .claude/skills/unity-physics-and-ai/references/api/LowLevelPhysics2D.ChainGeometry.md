<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.ChainGeometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The geometry of a chain of ChainSegment.

### Properties

| Property | Description |
| --- | --- |
| isValid | Check if the geometry is valid or not. |
| vertices | Get the geometry vertices. |

### Constructors

| Constructor | Description |
| --- | --- |
| ChainGeometry | Create the geometry of a Chain using the specified vertices. |

### Public Methods

| Method | Description |
| --- | --- |
| CalculateAABB | Calculate the AABB of the geometry. |
| CastRay | Calculate if a world ray intersects the geometry. See CastResult. |
| CastShape | Calculate if a cast shape intersects the geometry. Initially touching shapes are treated as a miss. You should check for overlap first if initial overlap is required. See CastShapeInput and CastResult. |
| ClosestPoint | Calculate the closest point on this geometry to the specified point. |
