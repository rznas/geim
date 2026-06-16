<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Toolbars.MainToolbarDropdown.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the content and behaviour of a dropdown element for the main toolbar.

Return an instance of this class through a static method registered with MainToolbarElementAttribute to add a dropdown element in the main toolbar. The following example demonstrates a dropdown that switches the active scene.

```csharp
using System.IO;
using UnityEditor;
using UnityEditor.SceneManagement;
using UnityEditor.Toolbars;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainToolbarDropdownSceneSelectorExample
{
    const string kElementPath = "Examples/Scene Selector";

    static string[] scenePaths;

    [MainToolbarElement(kElementPath, defaultDockPosition = MainToolbarDockPosition.Middle)]
    public static MainToolbarElement CreateSceneSelectorDropdown()
    {
        string activeSceneName;
        if (Application.isPlaying)
            activeSceneName = SceneManager.GetActiveScene().name;
        else
            activeSceneName = EditorSceneManager.GetActiveScene().name;
        if (activeSceneName.Length == 0)
            activeSceneName = "Untitled";

        var icon = EditorGUIUtility.IconContent("UnityLogo").image as Texture2D;
        var content = new MainToolbarContent(activeSceneName, icon, "Select active scene");
        return new MainToolbarDropdown(content, ShowDropdownMenu);
    }

    static void ShowDropdownMenu(Rect dropDownRect)
    {
        var menu = new GenericMenu();
        if (scenePaths.Length == 0)
        {
            menu.AddDisabledItem(new GUIContent("No Scenes in Project"));
        }
        foreach (string scenePath in scenePaths)
        {
            string sceneName = Path.GetFileNameWithoutExtension(scenePath);
            menu.AddItem(new GUIContent(sceneName), false, () =>
            {
                SwitchScene(scenePath);
            });
        }
        menu.DropDown(dropDownRect);
    }

    static void SwitchScene(string scenePath)
    {
        if (Application.isPlaying)
        {
            string sceneName = Path.GetFileNameWithoutExtension(scenePath);
            if (Application.CanStreamedLevelBeLoaded(sceneName))
            {
                Debug.Log($"Switching to scene: {sceneName}");
                SceneManager.LoadScene(sceneName);
            }
            else
            {
                Debug.LogError($"Scene '{sceneName}' is not in the Build Settings.");
            }
        }
        else
        {
            if (File.Exists(scenePath))
            {
                if (EditorSceneManager.SaveCurrentModifiedScenesIfUserWantsTo())
                {
                    Debug.Log($"Switching to scene: {scenePath}");
                    EditorSceneManager.OpenScene(scenePath);
                }
            }
            else
            {
                Debug.LogError($"Scene at path '{scenePath}' does not exist.");
            }
        }
    }

    static void RefreshSceneList()
    {
        scenePaths = Directory.GetFiles("Assets", "*.unity", SearchOption.AllDirectories);
    }

    static void SceneSwitched(Scene oldScene, Scene newScene)
    {
        MainToolbar.Refresh(kElementPath);
    }

    static MainToolbarDropdownSceneSelectorExample()
    {
        RefreshSceneList();
        EditorApplication.projectChanged += RefreshSceneList;
        SceneManager.activeSceneChanged += SceneSwitched;
        EditorSceneManager.activeSceneChangedInEditMode += SceneSwitched;
    }
}
```

The following example demonstrates a simple selector dropdown.

```csharp
using UnityEditor;
using UnityEditor.Toolbars;
using UnityEngine;

public class MainToolbarDropdownExample
{
    const string kElementPath = "Examples/Example Dropdown";

    static string selectedItem = "Item 1";

    [MainToolbarElement(kElementPath, defaultDockPosition = MainToolbarDockPosition.Middle)]
    public static MainToolbarElement CreateExampleDropdown()
    {
        var content = new MainToolbarContent(selectedItem);
        return new MainToolbarDropdown(content, ShowDropdownMenu);
    }

    static void ShowDropdownMenu(Rect dropDownRect)
    {
        var menu = new GenericMenu();
        menu.AddItem(new GUIContent("Item 1"), false, () =>
        {
            selectedItem = "Item 1";
            MainToolbar.Refresh(kElementPath);
        });
        menu.AddItem(new GUIContent("Item 2"), false, () =>
        {
            selectedItem = "Item 2";
            MainToolbar.Refresh(kElementPath);
        });
        menu.AddItem(new GUIContent("Item 3"), false, () =>
        {
            selectedItem = "Item 3";
            MainToolbar.Refresh(kElementPath);
        });
        menu.DropDown(dropDownRect);
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| MainToolbarDropdown | Specify the content and function of a main toolbar dropdown. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| content | The MainToolbarContent describes the content of a main toolbar element. For example, text, icon, or tooltip. |
| displayed | Specifies whether the `VisualElement` for this toolbar element should be displayed or not. Set to `True` by default. |
| enabled | Specifies whether a toolbar element should receive input events. Set to `True` by default. |
| populateContextMenu | Add content to the context menu that appears when you right-click this toolbar element. |
