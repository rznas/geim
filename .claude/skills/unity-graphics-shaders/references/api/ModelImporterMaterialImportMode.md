<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterMaterialImportMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Material import options for ModelImporter.

Determines the method used to handle materials in the Model Importer.

### Properties

| Property | Description |
| --- | --- |
| None | The model importer does not import materials. |
| ImportStandard | The model importer imports materials in standard mode using OnPostprocessMaterial callback. |
| ImportViaMaterialDescription | The model importer creates materials using the PreprocessMaterialDescription AssetPostprocessor. |
