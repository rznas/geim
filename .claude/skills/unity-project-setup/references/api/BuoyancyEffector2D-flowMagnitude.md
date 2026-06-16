<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuoyancyEffector2D-flowMagnitude.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The magnitude of the force used to similate fluid flow.

Fluid flow can be defined to move in any direction with a specific magnitude and a random variation on that magnitude.

This property defines the size of the force to be applied in the direction defined by flowAngle. This magnitude can be randomly varied by using flowVariation.

The flow forces are applied to the center of any submerged region of a Collider2D so it will not produce any torque (rotation) if the Collider2D is fully submerged (fully below the surfaceLevel) but will produce torque if the Collider2D is partially submerged (overlapping the surfaceLevel).

Additional resources: flowAngle, flowVariation.
