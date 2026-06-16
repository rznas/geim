<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ShadowDrawingSettings-batchLayerMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity renders objects whose BatchFilterSettings.batchLayer value is enabled in this bit mask.

Unity renders the object if you enable the BatchFilterSettings.batchLayer value in this bit mask. You can use BatchFilterSettings.batchLayer to specify a batch layer in each BatchDrawRange.

Objects that are not rendered using BatchRendererGroup are in batch layer `0`, so you can use bit 0 of `batchLayerMask` to control whether they're included in this renderer list.
