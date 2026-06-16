<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingContext-cullingLayerMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The `cullingLayerMask` value of the object from which the culling is invoked. The draw command is discarded by the internal culling if the expression `(1 << layer) & cullingLayerMask` is false. Using this field is optional, use it for performance or other optimization purposes.
