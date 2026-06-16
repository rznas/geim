<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintToolWithOverlaysBase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The abstract class that TerrainPaintToolWithOverlays inherits from.

Contains fields that can be overridden when you implement your own terrain painting tools to display in Terrain overlays. When you create custom Terrain Tools, they must inherit from the TerrainPaintToolWithOverlays<T0> class rather than this class.

### Properties

| Property | Description |
| --- | --- |
| Category | The TerrainCategory that the Terrain Tool belongs to. |
| HasBrushAttributes | True if the Terrain Tool has brush attributes, false otherwise. |
| HasBrushMask | True if Terrain Tool has brush masks, false otherwise. |
| HasToolSettings | True if Terrain Tool has custom settings, false otherwise. |
| IconIndex | The index at which you should place the Terrain Tool in the Terrain Tools overlay. |
| OffIcon | The icon displayed in the Terrain Tools overlay when the Terrain Tool isn't selected. |
| OnIcon | The icon displayed in the Terrain Tools overlay when the terrain tool is selected. |
| Terrain | The last hit terrain or the last active instance of a terrain object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetDescription | Description of the Terrain Tool. |
| GetName | Name of the Terrain Tool. |
| OnActivated | This function is called when the tool is activated. |
| OnDisable | Called when the tool is destroyed. |
| OnEnable | Called when the tool is created. |
| OnEnterToolMode | This function is called when the Terrain Tool is activated. |
| OnExitToolMode | This function is called when the Terrain Tool becomes inactive. |
| OnInspectorGUI | Custom Terrain Tool OnInspectorGUI callback. |
| OnPaint | Custom Terrain Tool paint callback. |
| OnRenderBrushPreview | Use this method to implement custom tool preview and UI behavior that only renders while the mouse is within the SceneView bounds or while you're actively using this tool. |
| OnSceneGUI | Custom Terrain Tool OnSceneGUI callback. |
| OnToolGUI | This method is used to implement the custom terrain editor paint tool. |
| OnToolSettingsGUI | Contains the IMGUI code for custom settings beyond the common settings. |
| OnWillBeDeactivated | Invoked before the terrain paint tool with overlays stops being the active tool. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| gridSnapEnabled | Use this property to allow the current EditorTool to enable or disable grid snapping. |
| isHidden | Returns true if the custom editor tool is hidden. Returns false otherwise. The Editor doesn't display hidden tools in the Scene view's Tools overlay. |
| target | The object being inspected. |
| targets | An array of the objects being inspected. |
| toolbarIcon | The icon and tooltip for this custom editor tool. If this function is not implemented, the toolbar displays the Inspector icon for the target type. If no target type is defined, the toolbar displays the Tool Mode icon. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| IsAvailable | Checks whether the custom editor tool is available based on the state of the editor. Unavailable tools are displayed as disabled in the Scene view's Tools overlay. |
| PopulateMenu | Adds menu items to Scene view context menu. |
| SetHidden | Set the hidden state of a custom editor tool. The Editor doesn't display hidden tools in the Scene view's Tools overlay. |
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
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |
