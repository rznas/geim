<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.CastShapeInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Cast shape arguments used by CastShape queries. To use existing shape geometries, use the helper constructors that allow creation via a specific shape geometry type.

### Properties

| Property | Description |
| --- | --- |
| canEncroach | Allow cast shape to encroach when initially touching. This only works if the radius is greater than zero. |
| maxFraction | The maximum fraction of the translation to consider in the range (0 to 1), typically 1. |
| shapeProxy | A proxy to the shape. |
| translation | Translation of the cast shape. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsQuery.CastShapeInput | Create a default cast shape input. |

### Static Methods

| Method | Description |
| --- | --- |
| FromShape | Create a CastShapeInput the specified world shape. The geometry will automatically be translated into world-space. |
