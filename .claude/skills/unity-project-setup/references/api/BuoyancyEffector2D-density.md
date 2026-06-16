<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuoyancyEffector2D-density.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The density of the fluid used to calculate the buoyancy forces.

Buoyancy forces are calculated by comparing the density of the effector to the Collider2D.density of the Collider2D. If the collider is less dense than the effector then the collider will float i.e. become more buoyant. If the collider is more dense than the effector then the collider will sink i.e. become less buoyant. If the collider is equally dense as the effector then there is no buoyancy forces applied and the collider will neither float or sink.

Note that the Collider2D.density can only be set when Rigidbody2D.useAutoMass is true. This provides the ability to fine-tune the collider density versus the effector density. If this is not required then Rigidbody2D.useAutoMass can be set to false in which case the Collider2D.density is fixed at 1 therefore an effector density more than this will cause the collider to float whereas an effector density less than this will cause the collider to sink.
