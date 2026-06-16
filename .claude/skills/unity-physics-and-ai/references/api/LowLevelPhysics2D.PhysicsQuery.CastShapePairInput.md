<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsQuery.CastShapePairInput.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Cast two shape proxies against each other. To use existing shape geometries, use the helper constructors that allow creation via a specific shape geometry type.

### Properties

| Property | Description |
| --- | --- |
| canEncroach | Allow cast shape proxies to encroach when initially touching. This only works if the radius is greater than zero. |
| maxFraction | The maximum fraction of the translation to consider in the range (0 to 1), typically 1. |
| shapeProxyA | A proxy to the shape A. |
| shapeProxyB | A proxy to the shape B. |
| transformA | The world transform for shape A |
| transformB | The world transform for shape B |
| translationB | Translation of the shape proxy B. |
