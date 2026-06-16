<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SkinWeights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Skin weights.

How many bones affect each vertex. This can be used when accessing the Bone Weight Buffer with Mesh.GetBoneWeightBuffer to determine what way the data will be ordered.

Additional resources: QualitySettings.skinWeights, SkinnedMeshRenderer.quality, Mesh.GetBoneWeightBuffer.

### Properties

| Property | Description |
| --- | --- |
| None | The mesh does not contain any bone weight data. |
| OneBone | One bone affects each vertex. When used to access Mesh.GetBoneWeightBuffer the Bone Weight buffer will contain only indices to the bones, as the weight will be set to 1. |
| TwoBones | Two bones affect each vertex. When used to access Mesh.GetBoneWeightBuffer the Bone Weight buffer will contain two indices and two floats per vertex. |
| FourBones | Four bones affect each vertex. When used to access Mesh.GetBoneWeightBuffer the Bone Weight buffer will contain one BoneWeight per vertex. |
| Unlimited | An unlimited number of bones affect each vertex. |
