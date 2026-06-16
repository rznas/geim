<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetBoneWeights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| boneWeights | A list of BoneWeight structs to populate. |

### Description

Gets the bone weights for the Mesh.

Use this method instead of Mesh.boneWeights if you want to avoid allocating a new array with every access.

The BoneWeight at each index corresponds to the vertex with the same index if this mesh has bone weights defined. Otherwise the list will be empty.

Note that this property uses BoneWeight structs, which represent exactly 4 bone weights per vertex. The newer BoneWeight1 struct describes a single bone weight, and it can be used with the associated Mesh.GetAllBoneWeights, Mesh.SetBoneWeights and Mesh.GetBonesPerVertex APIs to describe up to 255 bone weights per vertex. It is preferable to use BoneWeight1 and its associated APIs; they offer more flexibility, and might result in small performance benefits as Unity does not have to perform unnessary conversion operations.

Additional resources: Mesh.boneWeights, Mesh.GetAllBoneWeights, Mesh.SetBoneWeights, Mesh.GetBonesPerVertex, ModelImporter.maxBonesPerVertex, QualitySettings.skinWeights, SkinnedMeshRenderer.quality.
