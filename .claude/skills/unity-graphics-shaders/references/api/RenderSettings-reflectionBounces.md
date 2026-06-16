<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderSettings-reflectionBounces.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of times a reflection includes other reflections.

Defines in how many passes reflections are calculated. In a given pass, the Scene is rendered into a cubemap with the reflections calculated in the previous pass applied to reflective objects.

If set to 1, the Scene will be rendered once, which means that a reflection will not be able to reflect another reflection and reflective objects will show up black, when seen in other reflective surfaces.

If set to 2, the Scene will be rendered twice and reflective objects will show reflections from the first pass, when seen in other reflective surfaces.
