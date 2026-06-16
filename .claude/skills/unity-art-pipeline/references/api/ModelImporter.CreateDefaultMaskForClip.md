<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter.CreateDefaultMaskForClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| clip | Clip to which the mask will be applied. |

### Description

Creates a mask that matches the model hierarchy, and applies it to the provided ModelImporterClipAnimation.

When writing an AssetPostprocessor, use this method with your created clips to apply a mask that matches the transform hierarchy in the ModelImporter.
