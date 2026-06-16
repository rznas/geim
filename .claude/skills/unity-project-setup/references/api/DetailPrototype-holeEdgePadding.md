<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DetailPrototype-holeEdgePadding.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls how far away detail objects are from the edge of the hole area.

Specify a non-negative value, which is a scale of the detail mesh's width in world space. (DetailRenderMode.GrassBillboard details have a width of 1.) Unity multiplies this value by the detail mesh's width, and uses the result to determine the radius of a circular area around detail objects, which it then applies for testing against holes.
