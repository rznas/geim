<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Collider2D-density.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The density of the collider used to calculate its mass (when auto mass is enabled).

When using Rigidbody2D.useAutoMass, increasing the collider density increases its mass - as does increasing its area - as the collider mass is calculated as a product of density and area.

Note that by default, Rigidbody2D.useAutoMass is disabled, so the mass of the collider is set directly by Rigidbody2D.mass, and this density value is ignored.

Additional resources: Rigidbody2D.mass, Rigidbody2D.useAutoMass.
