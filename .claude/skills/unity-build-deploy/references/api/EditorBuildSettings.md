<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorBuildSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class allows you to modify the Editor Build Settings via script.

EditorBuildSettings is stored in `ProjectSettings/EditorBuildSettings.asset`. Typically this file should be included in source control.

**Scene List**

The `ProjectSettings/EditorBuildSettings.asset` file contains the global scene list, which defines scenes to be included in the Player build. This list can be overridden by the active BuildProfile. For more information see Override settings with build profiles.

**Config Objects**

EditorBuildSettings can be used to persist references to configuration objects.

In this context a config object is an asset, typically a ScriptableObject, that contains configuration settings. The objects listed in EditorBuildSettings are not automatically included in the build, making them ideal for editor-only settings. These assets could be accessed by custom build scripts, build callbacks, or any other script running in the editor.

API for working with config objects:

- EditorBuildSettings.AddConfigObject
- EditorBuildSettings.RemoveConfigObject
- EditorBuildSettings.TryGetConfigObject
- EditorBuildSettings.GetConfigObjectNames

**Config Object Example** 
 
Consider a package with a ScriptableObject-derived class for quality settings. You can customize these settings and create multiple assets, with different values for various contexts. Use EditorBuildSettings.AddConfigObject to track which asset should be considered as the "active" setting, marked by a distinctive name. Then a build callback reads settings for the active quality settings by calling EditorBuildSettings.TryGetConfigObject with the designated name.

Note: A similar feature is available for config objects that need to be included in the Player build, making them accessible to scripts running in the Player. See PlayerSettings.SetPreloadedAssets and PlayerSettings.GetPreloadedAssets.

Additional resources: EditorBuildSettingsScene, EditorUserBuildSettings, BuildPlayerOptions, SceneManager, IPreprocessBuildWithContext.

### Static Properties

| Property | Description |
| --- | --- |
| globalScenes | The list of scenes used by all platform profiles and build profiles that do not override global scenes. |
| scenes | The list of scenes in the active platform profile or build profile to be included in the build. |

### Static Methods

| Method | Description |
| --- | --- |
| AddConfigObject | Store a reference to a config object by name. |
| GetConfigObjectNames | Return a string array containing the names of all stored config object references. |
| RemoveConfigObject | Remove a config object reference by name. |
| TryGetConfigObject | Retrieve a config object reference by name. |

### Events

| Event | Description |
| --- | --- |
| sceneListChanged | A delegate called whenever EditorBuildSettings.scenes is set. |

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
