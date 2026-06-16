<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImportContext-selectedBuildTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the current build target and creates a dependency on the target platform within a scripted importer.

This property returns the current build target platform (similar to EditorUserBuildSettings.activeBuildTarget), however this property is provided specifically as a way for you to create a dependency on the build target within a scripted importer.

You should use this property if you are writing a scripted importer and you want your importer to generate different results based on the target platform. Using this property within a scripted importer creates a platform dependency in your importer. This means when you change the Editor's active build target, all assets imported by this importer will be automatically re-imported to reflect any changes caused by the dependency you set up.

*Note: If you are not writing an importer, and just want to read the currently selected build target, you should use* EditorUserBuildSettings.activeBuildTarget.
