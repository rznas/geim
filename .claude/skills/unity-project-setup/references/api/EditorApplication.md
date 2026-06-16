<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides a collection of static utilities, properties, and events to interact with the Unity Editor application itself.

Use `EditorApplication` to check various properties in the current Editor session or as a building block to create custom tools and workflows. For more information on extending the Editor, refer to Support for Editor UI.

Note that this class is only available in the Editor. For similar functionalities that relate to the project you are building, refer to Application.

In the following example, we are using the `EditorApplication` class to create a custom workflow allowing you to start your game from the main scene, as defined in the build profile, without requiring you to navigate to it manually. We then restore your authoring state when you return to edit mode.

```csharp
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine.SceneManagement;

[InitializeOnLoad]
public static class PlayFromFirstScene
{
    static SceneSetup[] s_PreviousAuthoringSceneSetup;

    [MenuItem("Examples/Play From First Scene", isValidateFunction: true)]
    static bool CanExecute()
    {
        return SceneManager.sceneCountInBuildSettings > 0 && !EditorApplication.isPlayingOrWillChangePlaymode;
    }

    [MenuItem("Examples/Play From First Scene")]
    static void Execute()
    {
        if (!EditorSceneManager.SaveCurrentModifiedScenesIfUserWantsTo())
            return;

        s_PreviousAuthoringSceneSetup = EditorSceneManager.GetSceneManagerSetup();
        EditorSceneManager.OpenScene(SceneUtility.GetScenePathByBuildIndex(0), OpenSceneMode.Single);
        EditorApplication.EnterPlaymode();
    }

    static PlayFromFirstScene()
    {
        EditorApplication.playModeStateChanged += OnPlaymodeStateChanged;
    }

    static void OnPlaymodeStateChanged(PlayModeStateChange state)
    {
        if (state == PlayModeStateChange.EnteredEditMode && s_PreviousAuthoringSceneSetup != null)
        {
            EditorSceneManager.RestoreSceneManagerSetup(s_PreviousAuthoringSceneSetup);
            s_PreviousAuthoringSceneSetup = null;
        }
    }
}
```

Additional resources: Application, EditorWindow, Editor.

### Static Properties

| Property | Description |
| --- | --- |
| applicationContentsPath | Path to the Unity editor contents folder. (Read Only) |
| applicationPath | Gets the path to the Unity Editor application. (Read Only) |
| applicationToolsPath | Path to the Unity Editor Tools folder. (Read Only) |
| contextualPropertyMenu | Callback raised whenever the user context-clicks on a property in an Inspector. |
| delayCall | Delegate which is called once after all inspectors update. |
| hierarchyWindowItemByEntityIdOnGUI | Delegate for OnGUI events for every visible list item in the HierarchyWindow. |
| isCompiling | Is editor currently compiling scripts? (Read Only) |
| isCreateFromTemplate | Returns true if the current project was created from a template project. |
| isFocused | Whether the Editor is the focused window of the operating system. (Read Only) |
| isPaused | Whether the Editor is paused. |
| isPlaying | Whether the Editor is in Play mode. |
| isPlayingOrWillChangePlaymode | Editor application state which is true only when the Editor is currently in or about to enter Play mode. (Read Only) |
| isRemoteConnected | Is editor currently connected to Unity Remote 4 client app. |
| isTemporaryProject | Returns true if the current project was created as a temporary project. |
| isUpdating | True if the Editor is currently refreshing the AssetDatabase. |
| modifierKeysChanged | Delegate for changed keyboard modifier keys. |
| projectWindowItemByEntityIdOnGUI | Delegate for OnGUI events for every visible list item in the ProjectWindow. |
| projectWindowItemOnGUI | Delegate for OnGUI events for every visible list item in the ProjectWindow. |
| searchChanged | Callback raised whenever the contents of a window's search box are changed. |
| timeSinceStartup | The time since the editor was started. (Read Only) |
| update | Delegate called periodically at the editor's tick rate for performing checks or updates. |

### Static Methods

| Method | Description |
| --- | --- |
| Beep | Plays system beep sound. |
| DirtyHierarchyWindowSorting | Set the hierarchy sorting method as dirty. |
| EnterPlaymode | Switches the editor to Play mode. |
| ExecuteMenuItem | Invokes the menu item in the specified path. |
| Exit | Exit the Unity editor application. |
| ExitPlaymode | Switches the editor to Edit mode. |
| LockReloadAssemblies | Prevents loading of assemblies when it is inconvenient. |
| OpenProject | Open another project. |
| QueuePlayerLoopUpdate | Normally, a player loop update will occur in the editor when the Scene has been modified. This method allows you to queue a player loop update regardless of whether the Scene has been modified. |
| RepaintHierarchyWindow | Refreshes the Hierarchy window. |
| RepaintProjectWindow | Can be used to ensure repaint of the ProjectWindow. |
| SetTemporaryProjectKeepPath | Sets the path that Unity should store the current temporary project at, when the project is closed. |
| Step | Perform a single frame step. |
| UnlockReloadAssemblies | Must be called after LockReloadAssemblies, to reenable loading of assemblies. |
| UpdateMainWindowTitle | Force Unity Editor to update its window title. This function is automatically called when a new scene is loaded or when the editor starts. A user having register a callback on EditorApplication.updateMainWindowTitle can call this function to force an update of the title. |

### Events

| Event | Description |
| --- | --- |
| focusChanged | Raises when the Editor gets or loses focus in the operating system. |
| hierarchyChanged | Event that is raised when an object or group of objects in the hierarchy changes. |
| pauseStateChanged | Event that is raised whenever the Editor's pause state changes. |
| playModeStateChanged | Event that is raised whenever the Editor's play mode state changes. |
| projectChanged | Event that is raised whenever the state of the project changes. |
| quitting | Unity raises this event when the editor application is quitting. |
| updateMainWindowTitle | Register a custom callback to specify how the Unity Editor title can be generated. Unity will trigger this callback when a new scene is loaded , when Unity starts or when EditorApplication.UpdateMainWindowTitle is called. |
| wantsToQuit | Unity raises this event when the editor application wants to quit. |

### Delegates

| Delegate | Description |
| --- | --- |
| CallbackFunction | Delegate to be called from EditorApplication callbacks. |
| HierarchyWindowItemByEntityIdCallback | Delegate to be called for every visible list item in the HierarchyWindow on every OnGUI event. |
| ProjectWindowItemByEntityIdCallback | Delegate to be called for every visible list item in the ProjectWindow on every OnGUI event. Use this if you if you want to extend the functionality of the Project window. For example, to display information or tools relating to the assets or sub-assets that are visible. |
| ProjectWindowItemCallback | Delegate to be called for every visible list item in the ProjectWindow on every OnGUI event. Use this if you if you want to extend the functionality of the Project window. For example, to display information or tools relating to the assets that are visible. |
| SerializedPropertyCallbackFunction | Delegate to be called from EditorApplication contextual inspector callbacks. |
