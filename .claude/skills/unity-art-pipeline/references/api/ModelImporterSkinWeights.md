<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterSkinWeights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Skin weights options for ModelImporter.

In order to import more than 4 skin weights per vertex, set ModelImporter.skinWeights to ModelImporterSkinWeights.Custom and set ModelImporter.maxBonesPerVertex to the required number. You may also limit the number of bones to less than 4, or set a threshold for the weights via ModelImporter.minBoneWeight.

Note that you must set QualitySettings.skinWeights to Unlimited in order for additional skin weights to be used.

### Properties

| Property | Description |
| --- | --- |
| Standard | Import the standard number of bones per vertex (currently 4). |
| Custom | Import a custom number of bones per vertex. |
