<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Toolbars.MainToolbarToggle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the content and behaviour of a toggle element for the main toolbar.

To add a toggle element in the main toolbar, return an instance of this class through a static method registered with MainToolbarElementAttribute .

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

### Constructors

| Constructor | Description |
| --- | --- |
| MainToolbarToggle | Specify the content and function of a main toolbar toggle. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| content | The MainToolbarContent describes the content of a main toolbar element. For example, text, icon, or tooltip. |
| displayed | Specifies whether the `VisualElement` for this toolbar element should be displayed or not. Set to `True` by default. |
| enabled | Specifies whether a toolbar element should receive input events. Set to `True` by default. |
| populateContextMenu | Add content to the context menu that appears when you right-click this toolbar element. |
