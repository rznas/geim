<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImportContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the import context for scripted importers during an import event.

This class carries both input and output information for the OnImportAsset() task.

### Properties

| Property | Description |
| --- | --- |
| assetPath | The path of the source asset file to be imported. |
| mainObject | The main object set on the AssetImportContext. |
| selectedBuildTarget | Returns the current build target and creates a dependency on the target platform within a scripted importer. |

### Public Methods

| Method | Description |
| --- | --- |
| AddObjectToAsset | Adds an object to the result of the import operation. |
| DependsOnArtifact | Setup artifact dependency to an asset. |
| DependsOnCustomDependency | Allows you to specify that an Asset has a custom dependency. |
| DependsOnSourceAsset | Allows you to specify that an Asset depends directly on the source file of another Asset (as opposed to the import result of another asset). |
| GetArtifactFilePath | Returns the path of the Artifact file that was created by another importer, and adds a dependency to that file. |
| GetObjects | Gets the list of objects set on the AssetImportContext. |
| GetOutputArtifactFilePath | Returns the path where to write a new Artifact File with the given fileName. |
| GetReferenceToAssetMainObject | Returns the main asset from the given path (if it exists) and automatically adds a dependency on its path if it is the main asset type. |
| LogImportError | Logs an error message encountered during import. |
| LogImportWarning | Logs a warning message encountered during import. |
| SetMainObject | Sets the main object for import. |
