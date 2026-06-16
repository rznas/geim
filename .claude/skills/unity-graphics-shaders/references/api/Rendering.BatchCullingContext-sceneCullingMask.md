<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingContext-sceneCullingMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this bit mask to discard the draw commands in a particular context. A draw command is not discarded if the expression `(1 << layer) & sceneCullingMask` is true. This field is typically used when rendering Editor previews.
