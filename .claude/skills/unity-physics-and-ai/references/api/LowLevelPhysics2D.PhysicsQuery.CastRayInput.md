<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.CastRayInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Cast-Ray arguments used by CastRay queries.

### Properties

| Property | Description |
| --- | --- |
| maxFraction | The maximum fraction of the translation to consider in the range (0 to 1), typically 1. |
| origin | The origin (start) of the ray. |
| translation | The translation relative to the CastRayInput.origin of the ray. |

### Constructors

| Constructor | Description |
| --- | --- |
| PhysicsQuery.CastRayInput | Create a default Cast Ray input. |

### Static Methods

| Method | Description |
| --- | --- |
| FromTo | Calculate a Cast-Ray given two positions. |
