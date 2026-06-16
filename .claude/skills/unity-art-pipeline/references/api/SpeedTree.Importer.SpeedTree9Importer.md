<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpeedTree.Importer.SpeedTree9Importer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the SpeedTree 9 asset importer, providing methods for processing and post-processing SpeedTree assets during import.

### Constructors

| Constructor | Description |
| --- | --- |
| SpeedTree9Importer | Initializes a new instance of the SpeedTree9Importer with default values. |

### Delegates

| Delegate | Description |
| --- | --- |
| OnAssetPostProcess | Called after a SpeedTree asset has been processed during import. Handles post-processing tasks specific to SpeedTree assets. |
| OnCustomEditorSettings | The method to handle custom editor settings related to rendering pipelines. This method is designed for exposing custom properties per pipeline, such as the Diffuse Profile for High Definition Render Pipeline (HDRP). |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| assetBundleName | Get or set the AssetBundle name. |
| assetBundleVariant | Get or set the AssetBundle variant. |
| assetPath | The path name of the asset for this importer. (Read Only) |
| importSettingsMissing | The value is true when no meta file is provided with the imported asset. |
| userData | Get or set any user data. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| AddRemap | Map a sub-asset from an imported asset (such as an FBX file) to an external Asset of the same type. |
| GetExternalObjectMap | Gets a copy of the external object map used by the AssetImporter. |
| RemoveRemap | Removes an item from the map of external objects. |
| SaveAndReimport | Save asset importer settings if asset importer is dirty. |
| SetAssetBundleNameAndVariant | Set the AssetBundle name and variant. |
| SupportsRemappedAssetType | Checks if the AssetImporter supports remapping the given asset type. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |
| OnImportAsset | This method must be overriden by the derived class and is called by the Asset pipeline to import files. |
| SupportsRemappedAssetType | Override this method if your ScriptedImporter supports remapping specific asset types. |

### Static Methods

| Method | Description |
| --- | --- |
| GetAtPath | Retrieves the asset importer for the asset at path. |
| GetImportLog | Retrieves logs generated during the import of the asset at path. |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |

### Messages

| Message | Description |
| --- | --- |
| GatherDependenciesFromSourceFile | A static callback that you can implement to set up artifact dependencies to other Assets, and optimize the order your assets are imported. |
| OnValidate | This function is called when the importer is loaded or a value is changed in the Inspector. |
| Reset | Reset to default values. |
