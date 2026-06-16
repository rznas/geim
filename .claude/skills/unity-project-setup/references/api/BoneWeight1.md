<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BoneWeight1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes a bone weight that affects a vertex in a mesh.

This struct can be used with the Mesh.GetAllBoneWeights, Mesh.SetBoneWeights and Mesh.GetBonesPerVertex APIs to describe up to 255 bone weights per vertex.

Note that the older BoneWeight struct, and the associated Mesh.boneWeights and Mesh.GetBoneWeights APIs, describe exactly 4 bone weights per vertex. It is preferable to use BoneWeight1 and its associated APIs; they offer more flexibility, and might result in small performance benefits as Unity does not have to perform unnecessary conversion operations.

Additional resources: Mesh.SetBoneWeights, Mesh.GetAllBoneWeights, Mesh.GetBonesPerVertex, Mesh.boneWeights, Mesh.GetBoneWeights, ModelImporter.maxBonesPerVertex, QualitySettings.skinWeights, SkinnedMeshRenderer.quality.

### Properties

| Property | Description |
| --- | --- |
| boneIndex | Index of bone. |
| weight | Skinning weight for bone. |
