<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-skinWeights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Skin weights import options.

To import more than 4 bone weights per vertex, set this property to ModelImporterSkinWeights.Custom and set ModelImporter.maxBonesPerVertex to the required number. You may also limit the number of bones to less than 4, or set a threshold for the weights via ModelImporter.minBoneWeight.

Note that QualitySettings.skinWeights and SkinnedMeshRenderer.quality can limit the number of bone weights that Unity uses for skinning. Ensure that these values are set to Auto, if you want to use more than 4 bone weights per vertex.

Additional resources: ModelImporter.maxBonesPerVertex, ModelImporter.minBoneWeight,QualitySettings.skinWeights, SkinnedMeshRenderer.quality.
