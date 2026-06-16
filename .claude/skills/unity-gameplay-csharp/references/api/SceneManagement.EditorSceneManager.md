<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Manage scenes in the Editor when it is in Edit mode.

The EditorSceneManager is a scene management system for Edit mode in the Editor. The EditorSceneManager extends the SceneManager and provides Editor-specific logic and behavior on top of SceneManager’s API.

Use the EditorSceneManager to control which scenes are displayed in the Hierarchy window by using OpenScene, CloseScene, or, to open multiple scenes at once, use RestoreSceneManagerSetup. 

Note: In Play mode, use the SceneManager API to load and unload scenes.

Terminology:

- SceneAsset is the imported object for scene asset files with the extension ‘.unity’. It is used to set up references to scene files in Editor scripts. Note that SceneAsset is Editor-only, since paths or the index of a scene in the Build Settings is used for loading at runtime.
- Scene is an instance of a scene file when loaded with SceneManager.LoadScene in Play mode or when opened with EditorSceneManager.OpenScene in Edit mode.

When a scene file has been opened by the EditorSceneManager.OpenScene, the contents of the scene file are loaded into memory and a Scene struct handle is returned. This Scene struct is used by various Editor and runtime APIs.

**Creating a scene**

You can use EditorSceneManager.NewScene to create a new scene. When you create a new Scene, it displays in the Hierarchy as "Untitled". This untitled scene has not yet been saved to disk. You can only have one "Untitled" scene at a time. 

 **Saving a scene to a SceneAsset**

These are APIs you can use to save a scene to a SceneAsset on disk at the given path, either directly from code or from a Save dialog:

- EditorSceneManager.SaveScene
- EditorSceneManager.SaveScenes
- EditorSceneManager.SaveOpenScenes
- EditorSceneManager.SaveModifiedScenesIfUserWantsTo

**Opening and closing scenes**

Use the following to control which scenes are opened in Edit mode and shown in the Hierarchy window:

- EditorSceneManager.OpenScene
- EditorSceneManager.CloseScene
- EditorSceneManager.RestoreSceneManagerSetup

Note: The Editor requires at least one scene to be open and loaded. If you want to close all scenes, use the NewSceneMode.Single with the EditorSceneManager.NewScene API.

**Accessing loaded scenes**

The EditorSceneManager offers APIs to access the currently loaded scenes through its base class. For example, SceneManager.loadedSceneCount, SceneManager.GetSceneAt, and SceneManager.GetSceneByPath.

**Scene manipulation**

Use methods through the base SceneManager class, such as SceneManager.MergeScenes and SceneManager.MoveGameObjectToScene, to move objects between scenes.

**EditorSceneManager events**

The EditorSceneManager also exposes many events that can be used to listen to changes to scenes like: when a new scene is created, or when a scene is opened or closed in the Editor. Scripts can register on these events and then be notified when there are changes in the state of the EditorSceneManager. Refer to the Events section.

**Editor tooling scenes**

 The EditorSceneManager also has the following API to managing in-memory Editor-only tooling scenes. These are called preview scenes and the lifetime of these scenes has to be maintained by you. You can use them for your own Editor tooling. These scenes are not automatically shown in the Hierarchy window.

- EditorSceneManager.NewPreviewScene
- EditorSceneManager.ClosePreviewScene

**Controlling the start scene in Play mode**

In any Editor script, you can set EditorSceneManager.playModeStartScene if you want to mimic a custom boot scene for Play mode instead of playing the currently opened scenes from Edit mode.

**Code sample of core EditorSceneManager APIs**

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEngine.UIElements;
using UnityEditor.UIElements;
using System.Collections.Generic;public class EditorSceneManagerTestWindow : EditorWindow
{
    private readonly string[] m_ScenePaths = { "Assets/Scene1.unity", "Assets/Scene2.unity", "Assets/Scene3.unity", "Assets/Scene4.unity" };
    private ObjectField[] m_SceneFields;    [MenuItem("Examples/EditorSceneManager")]
    public static void ShowWindow()
    {
        var window = GetWindow<EditorSceneManagerTestWindow>();
        window.titleContent = new GUIContent("EditorSceneManager APIs");
        window.minSize = new Vector2(300, 400);
    }    public void CreateGUI()
    {
        var root = rootVisualElement;
        root.style.paddingLeft = root.style.paddingRight = root.style.paddingBottom = root.style.paddingTop = 10;        // Create buttons
        var createScenesButton = CreateButton("Create Test Scenes", 30, CreateScenes);
        var openSingleSceneButton = CreateButton("Open Single Scene", 10, OpenSingleScene);
        var restoreSceneManagerSetupButton = CreateButton("Restore SceneManager Setup", 10, RestoreSceneManagerSetup);
        var closeAllScenesButton = CreateButton("Close All Scenes", 10, CloseAllScenes);        // Add buttons to rootVisualElement
        root.Add(createScenesButton);
        root.Add(openSingleSceneButton);
        root.Add(restoreSceneManagerSetupButton);
        root.Add(closeAllScenesButton);        // Add title
        var titleLabel = new Label("Scene Asset References");
        titleLabel.style.fontSize = 12;
        titleLabel.style.marginBottom = 10;
        titleLabel.style.marginTop = 30;
        titleLabel.style.unityFontStyleAndWeight = FontStyle.Bold;
        root.Add(titleLabel);        // Add a couple of object fields for picking SceneAssets
        const int kNumObjectFields = 5;
        m_SceneFields = new ObjectField[kNumObjectFields];
        for(int i=0; i<m_SceneFields.Length; i++)
        {
            var sceneField = new ObjectField()
            {
                objectType = typeof(SceneAsset),
                allowSceneObjects = false
            };
            root.Add(sceneField);
            m_SceneFields[i] = sceneField;
        }
      
        var openReferencedScenesButton = CreateButton("Open Referenced Scenes", 10, OpenReferencedScenes);
        root.Add(openReferencedScenesButton);
    }    private Button CreateButton(string text, float bottomMargin, System.Action clickEvent)
    {
        var button = new Button(clickEvent) { text = text };
        button.style.marginBottom = bottomMargin;
        button.style.height = 30;
        return button;
    }    private void CreateScenes()
    {
        foreach (var scenePath in m_ScenePaths)
        {
            var scene = EditorSceneManager.NewScene(NewSceneSetup.DefaultGameObjects, NewSceneMode.Single);
            EditorSceneManager.SaveScene(scene, scenePath);
        }
    }    private void RestoreSceneManagerSetup()
    {
        if (!EditorSceneManager.SaveCurrentModifiedScenesIfUserWantsTo())
            return;        var sceneSetups = new List<SceneSetup>();
        for (int i = 0; i < m_ScenePaths.Length; i++)
        {
            var scenePath = m_ScenePaths[i];
            var setup = new SceneSetup
            {
                path = scenePath,
                isLoaded = true,
                isActive = (i == 0) // First scene is active
            };
            sceneSetups.Add(setup);
        }        EditorSceneManager.RestoreSceneManagerSetup(sceneSetups.ToArray());
    }    private void OpenSingleScene()
    {
        if (!EditorSceneManager.SaveCurrentModifiedScenesIfUserWantsTo())
            return;        EditorSceneManager.OpenScene(m_ScenePaths[0], OpenSceneMode.Single);
    }    private void CloseAllScenes()
    {
        if (!EditorSceneManager.SaveCurrentModifiedScenesIfUserWantsTo())
            return;        EditorSceneManager.NewScene(NewSceneSetup.EmptyScene, NewSceneMode.Single);
    }    private void OpenReferencedScenes()
    {
        // Check if we have valid scenes
        var sceneSetups = new List<SceneSetup>();
        bool hasValidScenes = false;        for (int i = 0; i < m_SceneFields.Length; i++)
        {
            var sceneAsset = m_SceneFields[i].value as SceneAsset;
            if (sceneAsset != null)
            {
                hasValidScenes = true;
                var scenePath = AssetDatabase.GetAssetPath(sceneAsset);
                var sceneSetup = new SceneSetup
                {
                    path = scenePath,
                    isLoaded = true,
                    isActive = (i == 0) // First scene is active
                };
                sceneSetups.Add(sceneSetup);
            }
        }        if (!hasValidScenes)
        {
            EditorUtility.DisplayDialog("Error", "Please assign at least one scene.", "OK");
            return;
        }        // Save current modified scenes if necessary
        if (!EditorSceneManager.SaveCurrentModifiedScenesIfUserWantsTo())
            return;        // Restore the scene setup
        EditorSceneManager.RestoreSceneManagerSetup(sceneSetups.ToArray());
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| DefaultSceneCullingMask | Use SceneCullingMasks.DefaultSceneCullingMask instead. |
| playModeStartScene | Loads this SceneAsset when you start Play Mode. |
| preventCrossSceneReferences | Controls whether cross-Scene references are allowed in the Editor. |
| previewSceneCount | The current amount of active preview Scenes. |

### Static Methods

| Method | Description |
| --- | --- |
| CalculateAvailableSceneCullingMask | Go through all Scenes and find the smallest unused bit in the unition of all Scene culling masks. |
| ClosePreviewScene | Closes a preview Scene created by NewPreviewScene or OpenPreviewScene. |
| CloseScene | Close the Scene. If removeScene flag is true, the closed Scene will also be removed from EditorSceneManager. |
| DetectCrossSceneReferences | Detects cross-Scene references in a Scene. |
| EnsureUntitledSceneHasBeenSaved | Shows a save dialog if an Untitled Scene exists in the current Scene manager setup. |
| GetSceneCullingMask | Return the culling mask set on the given Scene. |
| GetSceneManagerSetup | Returns the current setup of the SceneManager. |
| IsPreviewScene | Checks whether a scene is a preview scene. |
| IsPreviewSceneObject | Checks whether an object is part of a preview scene. |
| LoadSceneAsyncInPlayMode | This method allows you to load a Scene during playmode in the editor, without requiring the Scene to be included in the Build Settings Scene list. |
| LoadSceneInPlayMode | This method allows you to load a Scene during playmode in the editor, without requiring the Scene to be included in the Build Settings Scene list. |
| MarkAllScenesDirty | Mark all the loaded Scenes as modified. |
| MarkSceneDirty | Mark the specified Scene as modified. |
| MoveSceneAfter | Allows you to reorder the Scenes currently open in the Hierarchy window. Moves the source Scene so it comes after the destination Scene. |
| MoveSceneBefore | Allows you to reorder the Scenes currently open in the Hierarchy window. Moves the source Scene so it comes before the destination Scene. |
| NewPreviewScene | Creates a new preview scene. |
| NewScene | Create a new Scene. |
| OpenPreviewScene | Opens a Scene Asset in a preview Scene. |
| OpenScene | Open a Scene in the Editor. |
| RestoreSceneManagerSetup | Restore the setup of the SceneManager. |
| SaveCurrentModifiedScenesIfUserWantsTo | Asks the user if they want to save the current open modified Scene or Scenes in the Hierarchy. |
| SaveModifiedScenesIfUserWantsTo | Asks whether the modfied input Scenes should be saved. |
| SaveOpenScenes | Save all open Scenes. |
| SaveScene | Save a Scene. |
| SaveScenes | Save a list of Scenes. |
| SetSceneCullingMask | Set the culling mask on this scene to this value. Cameras will only render objects in Scenes that have the same bits set in their culling mask. |

### Events

| Event | Description |
| --- | --- |
| activeSceneChangedInEditMode | Subscribe to this event to get notified when the active Scene has changed in Edit mode in the Editor. |
| newSceneCreated | This event is called after a new Scene has been created. |
| sceneClosed | This event is called after a Scene has been closed in the editor. |
| sceneClosing | This event is called before closing an open Scene after you have requested that the Scene is closed. |
| sceneDirtied | This event is called after a Scene has been modified in the editor. |
| sceneManagerSetupRestored | This can be useful to get notified when the SceneManager's scenes are replaced with a set of new scenes from calls to RestoreSceneManagerSetup.Use the scenes argument to check what scenes has just been opened.Additional resources: SceneManagerSetupRestoredCallback. |
| sceneOpened | This event is called after a Scene has been opened in the editor. |
| sceneOpening | This event is called before opening an existing Scene. |
| sceneSaved | This event is called after a Scene has been saved. |
| sceneSaving | This event is called before a Scene is saved disk after you have requested the Scene to be saved. |

### Delegates

| Delegate | Description |
| --- | --- |
| NewSceneCreatedCallback | Callbacks of this type which have been added to the newSceneCreated event are called after a new Scene has been created. |
| SceneClosedCallback | Callbacks of this type which have been added to the sceneClosed event are called immediately after the Scene has been closed. |
| SceneClosingCallback | Callbacks of this type which have been added to the sceneClosing event are called just before a Scene is closed. |
| SceneDirtiedCallback | Callbacks of this type which have been added to the sceneDirtied event are called after a Scene changes from being unmodified to being modified. |
| SceneManagerSetupRestoredCallback | Callbacks of this type which have been added to the sceneManagerSetupRestored event are called after RestoreSceneManagerSetup has been called. |
| SceneOpenedCallback | Callbacks of this type which have been added to the sceneOpened event are called after a Scene has been opened. |
| SceneOpeningCallback | Callbacks of this type which have been added to the sceneOpening event are called just before opening a Scene. |
| SceneSavedCallback | Callbacks of this type which have been added to the sceneSaved event are called after a Scene has been saved. |
| SceneSavingCallback | Callbacks of this type which have been added to the sceneSaving event are called just before the Scene is saved. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| loadedSceneCount | The number of loaded Scenes. |
| sceneCount | The current number of Scenes. |
| sceneCountInBuildSettings | Number of Scenes in Build Settings. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateScene | Create an empty new Scene at runtime with the given name. |
| GetActiveScene | Gets the currently active Scene. |
| GetSceneAt | Gets the scene at the specified index in the SceneManager's scene list. This includes scenes that are currently loading or unloading. |
| GetSceneByBuildIndex | Get a Scene struct from a build index. |
| GetSceneByName | Searches through the Scenes loaded for a Scene with the given name. |
| GetSceneByPath | Searches all Scenes loaded for a Scene that has the given asset path. |
| LoadScene | Loads the Scene by its name or index in Build Settings. |
| LoadSceneAsync | Loads the Scene asynchronously in the background. |
| MergeScenes | This will merge the source Scene into the destinationScene. |
| MoveGameObjectsToScene | Move multiple GameObjects, represented by a NativeArray of instance IDs, from their current Scene to a new Scene. |
| MoveGameObjectToScene | Move a GameObject from its current Scene to a new Scene. |
| SetActiveScene | Set the Scene to be active. |
| UnloadSceneAsync | Destroys all GameObjects associated with the given Scene and removes the Scene from the SceneManager. |

### Events

| Event | Description |
| --- | --- |
| activeSceneChanged | Subscribe to this event to get notified when the active Scene has changed. |
| sceneLoaded | Assign a custom callback to this event to get notifications when a Scene has loaded. |
| sceneUnloaded | Add a delegate to this to get notifications when a Scene has unloaded. |
