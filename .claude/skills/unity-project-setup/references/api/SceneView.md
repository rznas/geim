<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to manage SceneView settings, change the SceneView camera properties, subscribe to events, call SceneView methods, and render open scenes.

### Static Properties

| Property | Description |
| --- | --- |
| currentDrawingSceneView | The SceneView that is being drawn. |
| lastActiveSceneView | The SceneView that was most recently in focus. |
| lastActiveSceneViewChanged | Register to this callback to get notified when the active Scene View changes. |
| sceneViews | The list of all open Scene view windows. |
| selectedOutlineColor | Gets the Color of selected outline. |

### Properties

| Property | Description |
| --- | --- |
| audioPlay | Enables or disables Scene view audio effects. |
| camera | The Camera that is rendering this SceneView. |
| cameraDistance | The distance from camera to pivot. |
| cameraMode | The current DrawCameraMode for the Scene view camera. |
| cameraSettings | Use CameraSettings to set the properties for the SceneView Camera. |
| cameraViewport | The position and size of the area that the camera renders. |
| drawGizmos | Sets the visibility of all Gizmos in the Scene view. |
| in2DMode | Whether the SceneView is in 2D mode. |
| isRotationLocked | Whether the Scene view camera can be rotated. |
| isUsingSceneFiltering | Whether this SceneView is using scene filtering. |
| lastSceneViewRotation | When the Scene view is in 2D mode, this property contains the last camera rotation. |
| orthographic | Whether the Scene view camera is set to orthographic mode. |
| pivot | The central point that the camera orbits within the Scene view. |
| rotation | The direction of the camera to the pivot of the SceneView. |
| sceneLighting | Whether lighting is enabled or disabled in the Scene view. |
| sceneViewState | Use SceneViewState to set the debug options for the Scene view. |
| showGrid | Gets or sets whether to enable the grid for an instance of the SceneView. |
| size | The size of the Scene view measured diagonally. |
| validateTrueMetals | Whether the albedo is black for materials with an average specular color above 0.45. |

### Public Methods

| Method | Description |
| --- | --- |
| AlignViewToObject | Moves the Scene view to frame a transform. |
| AlignWithView | Aligns the current selection with the position and rotation of the Scene view camera. |
| Frame | Frames the given bounds in the Scene view. |
| FrameSelected | Frame the object selection in the Scene view. |
| IsCameraDrawModeEnabled | Returns true if mode is enabled in the current rendering setup, including custom validators. |
| IsCameraDrawModeSupported | Checks if the current rendering configuration supports the CameraMode. The check includes custom validators. |
| LookAt | Moves the Scene view to focus on a target. |
| LookAtDirect | LookAt without animating the scene movement. |
| MoveToView | Transforms all selected object to the scene pivot. |
| ResetCameraSettings | Resets the CameraSettings for the SceneView Camera to default. |
| SetSceneViewShaderReplace | Sets a replacement shader for rendering this Scene view. |

### Protected Methods

| Method | Description |
| --- | --- |
| SupportsStageHandling | Override this method to control whether the Scene view should change when you switch from one stage to another stage. |

### Static Methods

| Method | Description |
| --- | --- |
| AddCameraMode | Add a custom camera mode to the Scene view camera mode list. |
| AddOverlayToActiveView | Add an Overlay to be displayed in the last focused Scene View. Overlays added to this static list will be automatically moved to the last active Scene View, and are displayed until removed. |
| ClearUserDefinedCameraModes | Remove all user-defined camera modes. |
| FrameLastActiveSceneView | Frames the currently selected object(s) in the last active Scene view. |
| GetAllSceneCameras | Retrieves an array of all camera components from all open Scene views. |
| GetBuiltinCameraMode | Gets the built-in CameraMode that matches the specified DrawCameraMode. |
| RemoveOverlayFromActiveView | Remove an Overlay from displaying in the last focused Scene View. |
| RepaintAll | Repaints every open SceneView. |

### Events

| Event | Description |
| --- | --- |
| beforeSceneGui | The event issued when the OnGUI method is called. |
| duringSceneGui | Subscribe to this event to receive a callback whenever the Scene view calls the OnGUI method. |
| gridVisibilityChanged | Invoked when grid visibility changes. |
| onCameraModeChanged | An event that is invoked when the selected cameraMode changes. |
| onValidateCameraMode | A multicast delegate for custom render pipelines to specify support for a requested CameraMode. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| focusedWindow | The EditorWindow which currently has keyboard focus. (Read Only) |
| mouseOverWindow | The EditorWindow currently under the mouse cursor. (Read Only) |

### Properties

| Property | Description |
| --- | --- |
| autoRepaintOnSceneChange | Enable this property to automatically repaint the window when the SceneView is modified. |
| dataModeController | An instance of IDataModeController to handle DataMode functionalities for the current window. |
| docked | Returns true if EditorWindow is docked. |
| EditorWindow | Dockarea we're inside. |
| hasFocus | Returns true if EditorWindow is focused. |
| hasUnsavedChanges | This property specifies whether the Editor prompts the user to save or discard unsaved changes before the window closes. |
| maximized | Whether or not this window is maximized? |
| maxSize | The maximum size of this window when it is floating or modal. The maximum size is not used when the window is docked. |
| minSize | The minimum size of this window when it is floating or modal. The minimum size is not used when the window is docked. |
| overlayCanvas | The OverlayCanvas for this window. |
| position | The desired position of the window in screen space. |
| rootVisualElement | Retrieves the root visual element of this window hierarchy. |
| saveChangesMessage | The message that displays to the user if they are prompted to save |
| titleContent | The GUIContent used for drawing the title of EditorWindows. |
| wantsLessLayoutEvents | Specifies whether a layout pass is performed before all user events (for example, EventType.MouseDown or EventType.KeyDown), or is only performed before repaint events. |
| wantsMouseEnterLeaveWindow | Checks whether MouseEnterWindow and MouseLeaveWindow events are received in the GUI in this Editor window. |
| wantsMouseMove | Checks whether MouseMove events are received in the GUI in this Editor window. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| BeginWindows | Mark the beginning area of all popup windows. |
| Close | Close the editor window. |
| DiscardChanges | Discards unsaved changes to the contents of the window. |
| EndWindows | Close a window group started with EditorWindow.BeginWindows. |
| Focus | Moves keyboard focus to another EditorWindow. |
| GetExtraPaneTypes | Gets the extra types of EditorWindow associated with the current window. |
| RemoveNotification | Stop showing notification message. |
| Repaint | Make the window repaint. This queues a command to render the window on the next frame. |
| SaveChanges | Performs a save action on the contents of the window. |
| SendEvent | Sends an Event to a window. |
| Show | Show the EditorWindow window. |
| ShowAsDropDown | Shows a window with dropdown behaviour and styling. |
| ShowAuxWindow | Show the editor window in the auxiliary window. |
| ShowModal | Show modal editor window. |
| ShowModalUtility | Shows the EditorWindow as a floating modal window. |
| ShowNotification | Show a notification message. |
| ShowPopup | Shows an Editor window using popup-style framing. |
| ShowTab | Shows a docked Editor window. |
| ShowUtility | Show the EditorWindow as a floating utility window. |
| TryGetOverlay | Get an Overlay with matching ID from an EditorWindow canvas. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Protected Methods

| Method | Description |
| --- | --- |
| OnBackingScaleFactorChanged | Called when the UI scaling for this EditorWindow is changed. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateWindow | Creates an EditorWindow of type T. |
| FocusWindowIfItsOpen | Focuses the first found EditorWindow of specified type if it is open. |
| GetWindow | Returns the first EditorWindow of type windowType which is currently on the screen. |
| GetWindowWithRect | Returns the first EditorWindow of type t which is currently on the screen. |
| HasOpenInstances | Checks if an editor window is open. |
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
| Awake | Called as the new window is opened. |
| CreateGUI | CreateGUI is called when the EditorWindow's rootVisualElement is ready to be populated. |
| hasUnsavedChanges | This property specifies whether the Editor prompts the user to save or discard unsaved changes before the window closes. |
| OnBecameInvisible | Called after the window is removed from a container view, or is no longer visible within a tabbed collection of EditorWindow. |
| OnBecameVisible | Called after the window is added to a container view. |
| OnDestroy | OnDestroy is called to close the EditorWindow window. |
| OnFocus | Called when the window gets keyboard focus. |
| OnGUI | Implement your own editor GUI here. |
| OnHierarchyChange | Handler for message that is sent when an object or group of objects in the hierarchy changes. |
| OnInspectorUpdate | OnInspectorUpdate is called at 10 frames per second to give the inspector a chance to update. |
| OnLostFocus | Called when the window loses keyboard focus. |
| OnProjectChange | Handler for message that is sent whenever the state of the project changes. |
| OnSelectionChange | Called whenever the selection has changed. |
| saveChangesMessage | The message that displays to the user if they are prompted to save |
| Update | Called multiple times per second on all visible windows. |
| Awake | Called when an instance of ScriptableObject is created. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |

### Events

| Event | Description |
| --- | --- |
| windowFocusChanged | Called whenever the focused editor window is changed. |
