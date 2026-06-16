<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CullingGroupEvent-currentDistance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current distance band index of the sphere, after the most recent culling pass.

Note that this value will range from 0 to the length of the distance array passed to CullingGroup.SetBoundingDistances *inclusive*, as each bounding distance in the array is an upper bound for that index.

For example, given bounding distances [10, 20, 30], the first band (index 0) is spheres that are between 0 and 10 units away from the reference point, the second band (index 1) is spheres between 10 and 20 units away from the reference point, the third band (index 2) is spheres between 20 and 30 units from the reference point, and the implicit fourth band (index 3) is spheres beyond 30 units from the reference point.
