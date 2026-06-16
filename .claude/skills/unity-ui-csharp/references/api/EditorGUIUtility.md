<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUIUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Miscellaneous helper stuff for EditorGUI.

### Static Properties

| Property | Description |
| --- | --- |
| currentViewWidth | The width of the GUI area for the current EditorWindow or other view. This Property should only be accessed within an OnGUI call. |
| editingTextField | Is a text field currently editing text? |
| fieldWidth | The minimum width in pixels reserved for the fields of Editor GUI controls. |
| hierarchyMode | Is the Editor GUI in hierarchy mode? |
| isProSkin | Is the user currently using the pro skin? (Read Only) |
| labelWidth | The width in pixels reserved for labels of Editor GUI controls. |
| pixelsPerPoint | The scale of GUI points relative to screen pixels for the current viewThis value is the number of screen pixels per point of interface space. For instance, 2.0 on retina displays. Note that the value may differ from one view to the next if the views are on monitors with different UI scales. |
| singleLineHeight | Get the height used for a single Editor control such as a one-line EditorGUI.TextField or EditorGUI.Popup. |
| standardVerticalSpacing | Get the height used by default for vertical spacing between controls. |
| systemCopyBuffer | The system copy buffer. |
| textFieldHasSelection | True if a text field currently has focused and the text in it is selected. |
| whiteTexture | Get a white texture. |
| wideMode | Is the Editor GUI currently in wide mode? |

### Static Methods

| Method | Description |
| --- | --- |
| AddCursorRect | Add a custom mouse pointer to a control. |
| CommandEvent | Creates an event that can be sent to another window. |
| DrawColorSwatch | Draw a color swatch. |
| DrawCurveSwatch | Draw a curve swatch. |
| DrawRegionSwatch | Draw swatch with a filled region between two SerializedProperty curves. |
| FindTexture | Gets a texture from its source filename. You can load an Editor texture resource by name or a texture from an asset path. |
| GetBuiltinSkin | Get one of the built-in GUI skins, which can be the game view, inspector or Scene view skin as chosen by the parameter. |
| GetFlowLayoutedRects | Layout list of string items left to right, top to bottom in the given area. |
| GetIconForObject | Gets the custom icon associated with an object. Only GameObjects and MonoScripts have associated custom icons. |
| GetIconSize | Get the size that has been set using SetIconSize. |
| GetMainWindowPosition | Gets the position of the main window of the Unity Editor. This is the top level Editor Window that contains all the other Editor views, such as the Project Browser, Hierarchy, and Console. |
| GetObjectPickerControlID | The controlID of the currently showing object picker. |
| GetObjectPickerObject | The object currently selected in the object picker. |
| HasObjectThumbnail | Does a given class have per-object thumbnails? |
| IconContent | Fetch the GUIContent from the Unity builtin resources with the given name. |
| IsDisplayReferencedByCameras | Check if any enabled camera can render to a particular display. |
| Load | Load a built-in resource. |
| LoadRequired | Load a required built-in resource. |
| LookLikeControls | Make all EditorGUI look like regular controls. |
| ObjectContent | Return a GUIContent object with the name and icon of an Object. |
| PingObject | Ping an object in the Scene like clicking it in an inspector. |
| PixelsToPoints | Convert from pixel space to point space. |
| PointsToPixels | Convert from point space to pixel space. |
| QueueGameViewInputEvent | Send an input event into the game. |
| SetIconForObject | Sets a custom icon to associate with a GameObject or MonoScript. The custom icon is displayed in the Scene view and the Inspector. |
| SetIconSize | Set icons rendered as part of GUIContent to be rendered at a specific size. |
| SetMainWindowPosition | Sets position of Unity Editor's main window. |
| ShowObjectPicker | Show the object picker from code. |
| TrIconContent | Gets the GUIContent from Unity built-in resources with the given information or creates a GUIContent for a GUI element.The icon is loaded with a localized tooltip. Typically, the icon from `Assets/Editor Default Resources/Icons` is fetched using the icon name. Only the name of the icon, without the .png extension is needed. |
| TrTextContent | Gets the GUIContent from the Unity built-in resources with the given key or creates a GUIContent for a GUI element.The text and the tooltip are localized and loaded with an icon.Typically, the icon from `Assets/Editor Default Resources/Icons` is fetched using the icon name. Only the name of the icon, without the .png extension is needed. |
| TrTextContentWithIcon | Gets the GUIContent from Unity built-in resources with the given information or creates a GUIContent for a GUI element.The text and the tooltip are localized and loaded with an icon.Typically, the icon from `Assets/Editor Default Resources/Icons` is fetched using the icon name. Only the name of the icon, without the .png extension is needed.If a message type is specified instead of an icon or an icon name, the GUIContent.image is the icon associated with that message type. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| hasModalWindow | A global property, which is true if a ModalWindow is being displayed, false otherwise. |
| hotControl | The controlID of the current hot control. |
| keyboardControl | The controlID of the control that has keyboard focus. |
| systemCopyBuffer | Get access to the system-wide clipboard. |

### Static Methods

| Method | Description |
| --- | --- |
| AlignRectToDevice | Align a local space rectangle to the pixel grid. |
| ExitGUI | Puts the GUI in a state that will prevent all subsequent immediate mode GUI functions from evaluating for the remainder of the GUI loop by throwing an ExitGUIException. |
| GetControlID | Get a unique ID for a control. |
| GetStateObject | Get a state object from a controlID. |
| GUIToScreenPoint | Convert a point from GUI position to screen space. |
| GUIToScreenRect | Convert a rect from GUI position to screen space. |
| QueryStateObject | Get an existing state object from a controlID. |
| RotateAroundPivot | Helper function to rotate the GUI around a point. |
| ScaleAroundPivot | Helper function to scale the GUI around a point. |
| ScreenToGUIPoint | Convert a point from screen space to GUI position. |
| ScreenToGUIRect | Convert a rect from screen space to GUI position. |
