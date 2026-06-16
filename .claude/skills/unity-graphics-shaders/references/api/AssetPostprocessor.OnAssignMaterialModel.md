<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnAssignMaterialModel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Feeds a source material.

The returned material will be assigned to the renderer. If you return null, Unity will use its default material finding / generation method to assign a material. The `sourceMaterial` is generated directly from the model before importing and will be destroyed immediately after OnAssignMaterial.
