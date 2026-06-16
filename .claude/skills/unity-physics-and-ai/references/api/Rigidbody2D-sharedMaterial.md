<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-sharedMaterial.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The PhysicsMaterial2D that is applied to all Collider2D attached to this Rigidbody2D.

The PhysicsMaterial2D specified here is applied to all attached Collider2D unless the Collider2D specify their own PhysicsMaterial2D in Collider2D.sharedMaterial. If no Collider2D.sharedMaterial or Rigidbody2D.sharedMaterial is specified then the global PhysicsMaterial2D is used. If no global PhysicsMaterial2D is specified then the defaults are: PhysicsMaterial2D.friction = 0.4 and PhysicsMaterial2D.bounciness = 0.

In other words, a PhysicsMaterial2D specified on the Collider2D has priority over a PhysicsMaterial2D specified on a Rigidbody2D which has priority over the global PhysicsMaterial2D.

Additional resources: Collider2D.sharedMaterial & PhysicsMaterial2D.
