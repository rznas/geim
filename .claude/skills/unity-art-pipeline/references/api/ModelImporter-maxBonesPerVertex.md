<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-maxBonesPerVertex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of bones per vertex stored in this mesh data.

Range: 1 - 255, inclusive. Note that higher bone counts may have a performance cost, especially above 4 bones per vertex.

This setting affects the underlying mesh data; vertices with more than this number will have the lowest weighted bones discarded.

You can limit the number of bones that Unity takes into account when performing skinning using the QualitySettings.skinWeights and SkinnedMeshRenderer.quality APIs. Note that these settings do not affect the underlying mesh data.

Additional resources: ModelImporter.minBoneWeight, QualitySettings.skinWeights, SkinnedMeshRenderer.quality.
