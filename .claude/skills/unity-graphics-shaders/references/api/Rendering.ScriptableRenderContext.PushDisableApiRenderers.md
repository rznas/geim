<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ScriptableRenderContext.PushDisableApiRenderers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Prevent the immediate addition or removal of renderer scene nodes to the scene arrays. This protects against the creation of invalid indices or dangling pointers caused by changes to the scene arrays after the culling output has been computed.
