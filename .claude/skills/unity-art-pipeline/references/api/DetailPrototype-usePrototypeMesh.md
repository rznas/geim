<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DetailPrototype-usePrototypeMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates whether this detail prototype uses the Mesh object from the GameObject specified by prototype.

If renderMode is DetailRenderMode.Grass, you can set this value to either `true` or `false`. However, if renderMode is DetailRenderMode.GrassBillboard, you must set this value to `false`. And if renderMode is DetailRenderMode.VertexLit, you must set this value to `true`. Otherwise, this detail prototype won't render.
