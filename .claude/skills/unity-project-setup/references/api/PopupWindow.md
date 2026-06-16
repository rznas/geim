<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PopupWindow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class used to display popup windows that inherit from PopupWindowContent.

Popup Windows are borderless, and not draggable or resizable. They also will automatically close when they lose focus. They are intended to show short-lived information or options.

An example of a Popup window in the editor is the "Scene View Effects" options, in the Editor's Scene View toolbar:



Below is an example of a custom popup window which is displayed via a button in an editor window. The Popup has three toggle values, and will automatically close when it loses focus. The example is given as two scripts. The first defines an editor window that can be opened via a menu item. That editor window has a button which shows the popup. The second script defines the contents of the popup itself as a separate class.

First, this is the code for the simple editor window which launches the popup:

```csharp
using UnityEngine;
using UnityEditor;public class EditorWindowWithPopup : EditorWindow
{
    // Add menu item
    [MenuItem("Examples/Popup Example")]
    static void Init()
    {
        EditorWindow window = EditorWindow.CreateInstance<EditorWindowWithPopup>();
        window.Show();
    }    Rect buttonRect;
    void OnGUI()
    {
        {
            GUILayout.Label("Editor window with Popup example", EditorStyles.boldLabel);
            if (GUILayout.Button("Popup Options", GUILayout.Width(200)))
            {
                PopupWindow.Show(buttonRect, new PopupExample());
            }
            if (Event.current.type == EventType.Repaint) buttonRect = GUILayoutUtility.GetLastRect();
        }
    }
}
```

Next, this is the code for the popup itself:

```csharp
using UnityEngine;
using UnityEditor;public class PopupExample : PopupWindowContent
{
    bool toggle1 = true;
    bool toggle2 = true;
    bool toggle3 = true;    public override Vector2 GetWindowSize()
    {
        return new Vector2(200, 150);
    }    public override void OnGUI(Rect rect)
    {
        GUILayout.Label("Popup Options Example", EditorStyles.boldLabel);
        toggle1 = EditorGUILayout.Toggle("Toggle 1", toggle1);
        toggle2 = EditorGUILayout.Toggle("Toggle 2", toggle2);
        toggle3 = EditorGUILayout.Toggle("Toggle 3", toggle3);
    }    public override void OnOpen()
    {
        Debug.Log("Popup opened: " + this);
    }    public override void OnClose()
    {
        Debug.Log("Popup closed: " + this);
    }
}
```

Each of these should be saved as separate files named after their class name. Neither are behaviours, so you do not need to place them on a gameobject. Once they are in your project, try it by going to the new "Example" menu and selecting Popup Example. Then click the button in the new editor window to reveal the popup options window.

.

### Static Properties

| Property | Description |
| --- | --- |
| invalidSizeLabelUssClassName | USS class name for the label displayed when the content has an invalid size. |

### Protected Methods

| Method | Description |
| --- | --- |
| OnDisable | See ScriptableObject.OnEnable. |
| OnEnable | See ScriptableObject.OnDisable. |

### Static Methods

| Method | Description |
| --- | --- |
| Show | Show a popup with the given PopupWindowContent. |

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
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |

### Events

| Event | Description |
| --- | --- |
| windowFocusChanged | Called whenever the focused editor window is changed. |
