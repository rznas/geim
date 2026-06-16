<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Plane-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Creates a plane.

Resulting plane has normal `inNormal` and goes through a point `inPoint`.

`inNormal` must be a normalized vector.

### Description

Creates a plane.

Resulting plane has normal `inNormal` and distance `d`.

The distance is measured from the Plane to the origin, along the Plane's normal.

Note, this means a positive value for distance results in the Plane facing towards the origin. A negative distance value results in the Plane facing away from the origin.

`inNormal` must be a normalized vector.

### Description

Creates a plane.

The resulting plane goes through the given three points. The points go around clockwise as you look down on the top surface of the plane.
