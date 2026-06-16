<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.Exit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Exit the Unity editor application.

Calling this function will exit right away, without asking to save changes, so you may lose data! This function is mostly useful for exiting out of a commandline process with a specific error.


Additional resources: Unity command line arguments.

```csharp
// Simple script that lets you create a new
// Scene, create a cube and an empty game object in the Scene
// Save the Scene and close the editorusing UnityEditor;
using UnityEditor.SceneManagement;public class ExampleClass
{
    [MenuItem("Examples/Chain Actions and close")]
    static void EditorPlaying()
    {
        var newScene = EditorSceneManager.NewScene(NewSceneSetup.EmptyScene, NewSceneMode.Single);        EditorApplication.ExecuteMenuItem("GameObject/3D Object/Cube");
        EditorApplication.ExecuteMenuItem("GameObject/Create Empty");        EditorSceneManager.SaveScene(newScene, "Assets/MyNewScene.unity");
        EditorApplication.Exit(0);
    }
}
```
