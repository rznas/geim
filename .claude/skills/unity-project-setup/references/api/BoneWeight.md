<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BoneWeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes 4 skinning bone weights that affect a vertex in a mesh.

Elements in this struct must be in descending order of weight value. The sum of all weight values must be 1. If a vertex is affected by fewer than 4 bones, each of the remaining weight values must be 0.

Note that this struct, and the associated Mesh.boneWeights and Mesh.GetBoneWeights APIs, describe exactly 4 bone weights per vertex. The newer BoneWeight1 struct describes a single bone weight, and it can be used with the associated Mesh.GetAllBoneWeights, Mesh.SetBoneWeights and Mesh.GetBonesPerVertex APIs to describe up to 255 bone weights per vertex. It is preferable to use BoneWeight1 and its associated APIs; they offer more flexibility, and might result in small performance benefits as Unity does not have to perform unnessary conversion operations.

Additional resources: Mesh.boneWeights, Mesh.GetBoneWeights, Mesh.GetAllBoneWeights, Mesh.SetBoneWeights, Mesh.GetBonesPerVertex, ModelImporter.maxBonesPerVertex, QualitySettings.skinWeights, SkinnedMeshRenderer.quality.

### Properties

| Property | Description |
| --- | --- |
| boneIndex0 | Index of first bone. |
| boneIndex1 | Index of second bone. |
| boneIndex2 | Index of third bone. |
| boneIndex3 | Index of fourth bone. |
| weight0 | Skinning weight for first bone. |
| weight1 | Skinning weight for second bone. |
| weight2 | Skinning weight for third bone. |
| weight3 | Skinning weight for fourth bone. |
