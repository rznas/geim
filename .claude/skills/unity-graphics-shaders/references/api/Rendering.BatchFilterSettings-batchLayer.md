<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchFilterSettings-batchLayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The batch layer to use for draw commands in this draw range.

Use `batchLayer` to control which ranges Unity draws in a renderer list or shadow renderer list, based on FilteringSettings.batchLayerMask or ShadowDrawingSettings.batchLayerMask.

Objects that are not rendered using BatchRendererGroup are in batch layer `0`.
