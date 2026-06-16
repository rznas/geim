<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneVisibilityManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Manages Scene Visibility in the editor.

### Public Methods

| Method | Description |
| --- | --- |
| AreAllDescendantsHidden | Checks whether all the descendants of a GameObject are hidden. |
| AreAllDescendantsVisible | Checks whether all the descendants are visible. |
| AreAnyDescendantsHidden | Checks whether any descendants are hidden. |
| DisableAllPicking | Disables picking on all GameObjects. |
| DisablePicking | Disables picking on a GameObject, or an Array of GameObjects, and their descendants. |
| EnableAllPicking | Enables picking on all GameObjects. |
| EnablePicking | Enables picking on a GameObject, or an array of GameObjects, and its descendants. |
| ExitIsolation | Exits Isolation Mode. |
| Hide | Hides a GameObject, or an Array of GameObjects, and their descendants. |
| HideAll | Hides all GameObjects. |
| IsCurrentStageIsolated | Checks whether the current stage is in Isolation mode. |
| IsHidden | Checks the hidden state of a GameObject and, optionally, its descendants. |
| Isolate | Isolates a GameObject and its descendants. |
| IsPickingDisabled | Checks the picking state of a GameObject and, optionally, its descendants. |
| IsPickingDisabledOnAllDescendants | Checks whether all the descendants of a GameObject have picking disabled. |
| IsPickingDisabledOnAnyDescendant | Checks whether any descendants have picking disabled. |
| IsPickingEnabledOnAllDescendants | Checks whether all the descendants are pickable. |
| Show | Shows a GameObject, or an array of GameObjects, and its descendants. |
| ShowAll | Shows all GameObjects. |
| TogglePicking | Toggles the picking ability of a GameObject. |
| ToggleVisibility | Toggles the visible state of a GameObject. |

### Events

| Event | Description |
| --- | --- |
| pickingChanged | The event raised whenever the picking state of a GameObject changes. |
| visibilityChanged | The event raised whenever the visibility of a GameObject changes. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| instance | Gets the instance of the Singleton. Unity creates the Singleton instance when this property is accessed for the first time. If you use the FilePathAttribute, then Unity loads the data on the first access as well. |

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

### Protected Methods

| Method | Description |
| --- | --- |
| Save | Saves the current state of the ScriptableSingleton. |

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
| CreateInstance | Creates an instance of a scriptable object. |
| GetFilePath | Get the file path where this ScriptableSingleton is saved to. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |

### Messages

| Message | Description |
| --- | --- |
| Awake | Called when an instance of ScriptableObject is created. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |
