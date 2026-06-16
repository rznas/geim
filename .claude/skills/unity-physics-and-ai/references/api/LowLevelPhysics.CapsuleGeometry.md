<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics.CapsuleGeometry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains the basic geometric shape of a capsule.

When Unity retrieves the geometry from the CapsuleCollider, the CapsuleCollider.direction is not included. For this reason, you should assume the direction is always along the X axis.

### Properties

| Property | Description |
| --- | --- |
| GeometryType | Returns the geometry type of this shape, which is CapsuleGeometry. |
| HalfLength | The distance from the center of the shape to the center of either half-sphere at the caps. |
| Radius | The radius of the half-sphere at either cap of the capsule. |

### Constructors

| Constructor | Description |
| --- | --- |
| CapsuleGeometry | Create a capsule shape with the provided parameters. |
