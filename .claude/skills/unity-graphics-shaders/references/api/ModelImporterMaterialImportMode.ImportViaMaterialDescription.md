<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterMaterialImportMode.ImportViaMaterialDescription.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The model importer creates materials using the PreprocessMaterialDescription AssetPostprocessor.

When selected, the model importer delegates the process of populating new material properties to OnPreprocessMaterialDescription AssetPostprocessor In this mode, the model importer collects all available properties and animation data read from imported materials into a MaterialDescription struct. An internal implementation read most of the values and animation data from these properties and automatically re-map them to the Standard Unity Shader. HDRP and UniversalRP packages also provide their own implementations that remap the fbx material properties and animations to the Standard shader of the currently active rendering pipeline. When selected, OnPostprocessMaterial AssetPostprocessor is not called by the Model Importer. Additional resources: AssetPostprocessor.OnPreprocessMaterialDescription.
