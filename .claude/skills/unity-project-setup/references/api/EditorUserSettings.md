<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUserSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class for accessing and modifying Editor user settings related to version control and asset import.

Use the properties of this class to define local Editor user settings, which you can exclude from version control.

### Static Properties

| Property | Description |
| --- | --- |
| allowAsyncStatusUpdate | Allow version control status updates to be performed asynchronously. |
| artifactGarbageCollection | Control whether artifact garbage collection is performed when the Editor starts up. |
| AutomaticAdd | Automatically add new assets to version control when they are created or imported. |
| compressAssetsOnImport | Enable or disable texture compression during asset import. |
| desiredImportWorkerCount | The desired number of processes to use when importing assets, during an Asset Database refresh. |
| hierarchyOverlayIcons | Display version control status icons in the Hierarchy window. |
| idleImportWorkerShutdownDelayMilliseconds | Time in milliseconds that the Editor waits before shutting down idle import workers. |
| otherOverlayIcons | Display version control status icons in windows other than the Project and Hierarchy windows. |
| overlayIcons | Display version control status icons in the Project window. |
| overwriteFailedCheckoutAssets | Automatically overwrite assets that failed to checkout from version control when saving or importing. |
| scanLocalPackagesOnConnect | Enable or disable scanning of local packages when connecting to the Package Manager. |
| semanticMergeMode | Defines the semantic merge mode used by the version control system. |
| showFailedCheckout | Display assets that failed to checkout from version control with a special icon in the Project window. |
| standbyImportWorkerCount | Number of import workers that the import pipeline will keep standby for future imports. |
| WorkOffline | Enable or disable working offline with version control. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
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
