<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterMaterialImportMode.ImportStandard.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The model importer imports materials in standard mode using OnPostprocessMaterial callback.

When selected, the model importer generates and populates materials by applying a set of simple default rules. The ModelImporter will also invoke AssetPostprocessor.OnPostprocessMaterial with each created material. Note: This is the only option where OnPostprocessMaterial is called.
