<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor-needsApplyRevert.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether the ApplyRevertGUI method is required to draw in the Inspector.

Most Importers expose settings that are changed by users and require the Apply/Revert button to be pressed to update settings changes. Some Importers, such as MonoScriptImporter, do not expose settings and do not require the use of the ApplyRevertGUI method to update changes. In the cases where ApplyRevertGUI is not required, you can override needApplyRevert to return false. This avoids unnecessary checks on assets that the Importer Inspector performs when it is closed.
