<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Toolbars.MainToolbar.Refresh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Unique identifier path of the element to refresh. See MainToolbarElementAttribute.path. |

### Description

Notify the main toolbar to update the content or behaviour of a toolbar element.

To update the toolbar element the toolbar queryies the MainToolbarElement descriptor again from the MainToolbarElementAttribute tagged static method that has the same path.

```csharp
using UnityEditor;
using UnityEditor.Toolbars;
using UnityEngine;

public class MainToolbarToggleExample
{
    const string kElementPath = "Examples/Toggle Scene Visibility";

    [MainToolbarElement(kElementPath, defaultDockPosition = MainToolbarDockPosition.Middle)]
    public static MainToolbarElement CreateSceneViewGridToggle()
    {
        bool showGrid = SceneView.lastActiveSceneView is not null && SceneView.lastActiveSceneView.showGrid;

        var onIcon = EditorGUIUtility.IconContent("d_scenevis_visible").image as Texture2D;
        var offIcon = EditorGUIUtility.IconContent("d_scenevis_hidden").image as Texture2D;
        // We can change the content based on the internal state we want represented e.g. showGrid
        var icon = showGrid ? onIcon : offIcon;
        var content = new MainToolbarContent("Show Grid", icon, "Toggle grid visibility");

        return new MainToolbarToggle(content, showGrid, ToggleSceneGrid);
    }

    static void ToggleSceneGrid(bool value)
    {
        // The MainToolbarToggle does not keep its own state. It notifies this user code via
        // our ToggleSceneGrid callback, and it is the user's responsibility to update their
        // internal state and refresh the UI.
        if (SceneView.lastActiveSceneView is not null)
            SceneView.lastActiveSceneView.showGrid = value;
        MainToolbar.Refresh(kElementPath);
    }

    static void SceneViewChanged(SceneView oldScene, SceneView newScene)
    {
        // Scene grid visibility can be changed elsewhere such as in the Scene view. 
        // If that happens we want to be notified in order to refresh the UI to match.
        // Since CreateSceneViewGridToggle checks the internal state to match the UI content it produces,
        // we only need to call MainToolbar.Refresh with the matching path, but we will just use ToggleSceneGrid
        // for simplicity.
        if (oldScene != null)
            oldScene.gridVisibilityChanged -= ToggleSceneGrid;
        if (newScene != null)
            newScene.gridVisibilityChanged += ToggleSceneGrid;
    }

    static MainToolbarToggleExample()
    {
        SceneView.lastActiveSceneViewChanged += SceneViewChanged;
    }
}
```

The state of a `MainToolbarElements` only changes when a user updates the state. To do this, callbacks tell the user when to update their state as a result of UI interaction, for example when they select a toggle. Then, call `MainToolbar.Refresh` to update the UI to match the new state. You can call `MainToolbar.Refresh` whenever the state changes. For example, when the state changes internally and not as a result of UI interaction.
