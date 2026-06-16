<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WindZoneMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Modes a Wind Zone can have, either Spherical or Directional.

You can have more than one Spherical Wind Zone in a Scene, but it does not make much sense to have more than one Directional Wind Zone in your Scene as it affects the whole Scene. This Wind Zone Mode is used by the WindZone.mode member.

### Properties

| Property | Description |
| --- | --- |
| Directional | Wind zone affects the entire Scene in one direction. |
| Spherical | Wind zone only has an effect inside the radius, and has a falloff from the center towards the edge. |
