<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.Scene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The runtime data structure for a scene.

This object can be used to query information about a scene, and as an input to various scene manipulation functions in SceneManager and EditorSceneManager. To query the PhysicsScene that is assigned to the scene, use the PhysicsSceneExtensions.GetPhysicsScene method.

The following script prints some information about the currently loaded scene, creates and switches to a new scene, then prints the same information for the new scene. To use the script, attach it to a GameObject and run the project.

```csharp
using UnityEngine;
using UnityEngine.SceneManagement;public class SwitchSceneAndQueryInfo : MonoBehaviour
{
    public static void QuerySceneInfo(Scene scene)
    {
        Debug.Log("Scene name: " + scene.name);
        Debug.Log("Scene path: " + scene.path);
        Debug.Log("Scene build index: " + scene.buildIndex);
        Debug.Log("Scene is dirty: " + scene.isDirty);
        Debug.Log("Scene is loaded: " + scene.isLoaded);
        Debug.Log("Scene root count: " + scene.rootCount);
    }    public void Start()
    {
        // Query information about the currently active scene
        Scene currentScene = SceneManager.GetActiveScene();
        QuerySceneInfo(currentScene);        // Create a new scene and switch to it
        var newScene = SceneManager.CreateScene("MyNewScene");
        SceneManager.SetActiveScene(newScene);
        SceneManager.UnloadSceneAsync(currentScene);        // Query information about the new scene
        QuerySceneInfo(newScene);
    }
}
```

Additional resources: SceneAsset.

### Properties

| Property | Description |
| --- | --- |
| buildIndex | Return the index of the Scene in the Build Settings. |
| handle | A unique identifier for a loaded scene. |
| isDirty | Returns true if the Scene is modified. |
| isLoaded | IsLoaded is set to true after loading has completed and objects have been enabled. |
| isSubScene | Whether this scene is a subscene. |
| name | Returns the name of the Scene that is currently active in the game or app. |
| path | Returns the relative path of the Scene. For example: "Assets/MyScenes/MyScene.unity". |
| rootCount | The number of root transforms of this Scene. |

### Public Methods

| Method | Description |
| --- | --- |
| GetRootGameObjects | Returns all the root game objects in the Scene. |
| IsValid | Whether this is a valid Scene. A Scene may be invalid if, for example, you tried to open a Scene that does not exist. In this case, the Scene returned from EditorSceneManager.OpenScene would return False for IsValid. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Returns true if the Scenes are different. |
| operator == | Returns true if the Scenes are equal. |
