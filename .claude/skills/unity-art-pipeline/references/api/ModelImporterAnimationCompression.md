<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterAnimationCompression.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Animation compression options for ModelImporter.

Compressing animations saves space in the built game, but more compression introduces more artifacts in the animations.

Additional resources: ModelImporter.animationCompression.

### Properties

| Property | Description |
| --- | --- |
| Off | No animation compression. |
| KeyframeReduction | Perform keyframe reduction. |
| KeyframeReductionAndCompression | Perform keyframe reduction and compression. |
| Optimal | Perform keyframe reduction and choose the best animation curve representation at runtime to reduce memory footprint (default). |
