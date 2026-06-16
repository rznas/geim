<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlatformEffector2D-useSideFriction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Should friction be used on the platform sides?

When false, a contact on the side uses no friction. When true, any existing friction is used. This is useful to stop friction slowing a Collider2D when in contact with a vertical surface when a force is being applied to keep the Collider2D in contact with the surface. The "sides" are defined as the edges perpendicular to the "top" surface(s) in local-space.
