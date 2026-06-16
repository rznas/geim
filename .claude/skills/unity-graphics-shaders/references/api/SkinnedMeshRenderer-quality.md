<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SkinnedMeshRenderer-quality.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of bones per vertex that are taken into account during skinning.

The value can be either One Bone, Two Bones, Four Bones or Auto. Note that higher bone counts may have a performance cost, especially above 4 bones per vertex.

This setting does not change the underlying mesh data; it only affects the number of bone weights that Unity uses when performing skinning. This means that a mesh can have bone weight data that is unused due to this setting. You can change this value at runtime.

You can set this value for all meshes in the project using QualitySettings.skinWeights. You can set the maximum number of bone weights that mesh data stores per vertex using ModelImporter.maxBonesPerVertex.

Additional resources: ModelImporter.maxBonesPerVertex, ModelImporter.minBoneWeight, ModelImporter.skinWeights, QualitySettings.skinWeights, BoneWeight, BoneWeight1.
