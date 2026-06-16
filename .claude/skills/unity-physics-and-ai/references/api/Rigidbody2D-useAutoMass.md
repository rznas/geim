<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D-useAutoMass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should the total rigid-body mass be automatically calculated from the Collider2D.density of attached colliders?

When false, the explicitly set mass is used for the rigid-body mass. When true, the mass is automatically calculated from all attached Collider2D as a product of their Collider2D.density and area.

When true, inside the Unity editor, the Collider2D.density property will appear on any attached Collider2D and the mass property will become read-only.

When false, the mass property can be written to and the Collider2D.density property is not shown.

Additional resources: mass, Collider2D.density.
