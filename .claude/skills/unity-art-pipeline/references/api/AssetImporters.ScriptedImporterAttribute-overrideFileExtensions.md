<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.ScriptedImporterAttribute-overrideFileExtensions.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

List of file name extensions (not including the leading period character) that the scripted importer can handle in addition to the default file name extension(s).

This Importer is registered as a Override Importer candidate for all files with an extensions included in this list. Casing is ignored. "EXT" is equivalent to "ext" and registers the Default Importer on files with "EXT" or "ext" extensions. All extensions already listed in the fileExtensions property are ignored. Use AssetDatabase.GetAvailableImporterOverrides to get a list of available Importers for a specific asset. The active Importer for a given asset can be set by (a) selecting the importer from the **Importer** drop-down menu in the **AssetImporter** Inspector; or (b) via scripting with the AssetDatabase.SetImporterOverride method.

 Note : Composite extensions are considered during the registration of Override Importer candidates. For example, an importer registered with "composite.extension" will not qualify as a candidate for an asset file named "filename.othercomposite.extension". Priority is given to the composite extension with the closest match.
