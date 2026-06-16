<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.ScriptedImporterAttribute-importQueuePriority.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables controlling the ordering of asset import based on type. Positive values delay the processing of source asset files while negative values place them earlier in the import process.

This allows for basic dependency of asset imports. For example, having a custom asset type that must be run after all image files have been imported or after another type of custom importer has executed. 
 Useful values range between -3000 and greater than zero. Negative values allow the execution to occur before native importers are run (each native type has its own queue order).
