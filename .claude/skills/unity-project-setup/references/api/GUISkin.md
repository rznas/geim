<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines how GUI looks and behaves.

GUISkin contains GUI settings and a collection of GUIStyle objects that together specify GUI skin.

Active GUI skin is get and set through GUI.skin.

### Properties

| Property | Description |
| --- | --- |
| box | Style used by default for GUI.Box controls. |
| button | Style used by default for GUI.Button controls. |
| customStyles | Array of GUI styles for specific needs. |
| font | The default font to use for all styles. |
| GUISkin | Make this the current skin used by the GUI. |
| horizontalScrollbar | Style used by default for the background part of GUI.HorizontalScrollbar controls. |
| horizontalScrollbarLeftButton | Style used by default for the left button on GUI.HorizontalScrollbar controls. |
| horizontalScrollbarRightButton | Style used by default for the right button on GUI.HorizontalScrollbar controls. |
| horizontalScrollbarThumb | Style used by default for the thumb that is dragged in GUI.HorizontalScrollbar controls. |
| horizontalSlider | Style used by default for the background part of GUI.HorizontalSlider controls. |
| horizontalSliderThumb | Style used by default for the thumb that is dragged in GUI.HorizontalSlider controls. |
| label | Style used by default for GUI.Label controls. |
| scrollView | Style used by default for the background of ScrollView controls (see GUI.BeginScrollView). |
| settings | Generic settings for how controls should behave with this skin. |
| textArea | Style used by default for GUI.TextArea controls. |
| textField | Style used by default for GUI.TextField controls. |
| toggle | Style used by default for GUI.Toggle controls. |
| verticalScrollbar | Style used by default for the background part of GUI.VerticalScrollbar controls. |
| verticalScrollbarDownButton | Style used by default for the down button on GUI.VerticalScrollbar controls. |
| verticalScrollbarThumb | Style used by default for the thumb that is dragged in GUI.VerticalScrollbar controls. |
| verticalScrollbarUpButton | Style used by default for the up button on GUI.VerticalScrollbar controls. |
| verticalSlider | Style used by default for the background part of GUI.VerticalSlider controls. |
| verticalSliderThumb | Style used by default for the thumb that is dragged in GUI.VerticalSlider controls. |
| window | Style used by default for Window controls (Additional resources: GUI.Window). |

### Public Methods

| Method | Description |
| --- | --- |
| FindStyle | Try to search for a GUIStyle. This functions returns NULL and does not give an error. |
| GetStyle | Get a named GUIStyle. |

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
| CreateInstance | Creates an instance of a scriptable object. |

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
