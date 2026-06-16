<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Canvas-sortingGridNormalizedSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The normalized grid size that the canvas will split the renderable area into.

During rendering, the canvas splits the renderable area (bounds of all UI elements) into a grid. This is the normalized size of that grid. For example if you have a renderable area of 100 units with a sortingGridNormalizedSize of 0.1f then each grid cell would be 10 units.

Note: a value of 0 will default to 0.1f.
