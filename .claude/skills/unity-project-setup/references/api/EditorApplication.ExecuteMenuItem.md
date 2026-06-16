<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.ExecuteMenuItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Invokes the menu item in the specified path.

This function also works with Editor Scripts.

```csharp
// Simple script that lets you create a new
// Scene, create a cube and an empty game object in the Scene
// Save the Scene and close the editorusing UnityEditor;
using UnityEditor.SceneManagement;public class ExampleClass
{
    [MenuItem("Examples/Execute menu items")]
    static void EditorPlaying()
    {
        var newScene = EditorSceneManager.NewScene(NewSceneSetup.EmptyScene, NewSceneMode.Single);        EditorApplication.ExecuteMenuItem("GameObject/3D Object/Cube");
        EditorApplication.ExecuteMenuItem("GameObject/Create Empty");        EditorSceneManager.SaveScene(newScene, "Assets/MyNewScene.unity");
        EditorApplication.Exit(0);
    }
}
```
