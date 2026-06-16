<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-sharedMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The PhysicsMaterial2D that is applied to this collider.

If no PhysicsMaterial2D is specified then the Rigidbody2D.sharedMaterial on the Rigidbody2D that the collider is attached to is used. If the collider is not attached to a Rigidbody2D or no Rigidbody2D.sharedMaterial is specified then the global PhysicsMaterial2D is used. If no global PhysicsMaterial2D is specified then the defaults are: PhysicsMaterial2D.friction = 0.4 and PhysicsMaterial2D.bounciness = 0.

In other words, a PhysicsMaterial2D specified on the Collider2D has priority over a PhysicsMaterial2D specified on a Rigidbody2D which has priority over the global PhysicsMaterial2D.

Additional resources: Rigidbody2D.sharedMaterial & PhysicsMaterial2D.
