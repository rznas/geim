<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-minBoneWeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Minimum bone weight to keep.

Bone weights lower than this value will be discarded, unless they are the largest weight for a vertex. Trimming insignificant weights may improve performance. A value of 1.0 means fully weighted.

Additional resources: ModelImporter.maxBonesPerVertex, ModelImporter.skinWeights, QualitySettings.skinWeights, SkinnedMeshRenderer.quality.
