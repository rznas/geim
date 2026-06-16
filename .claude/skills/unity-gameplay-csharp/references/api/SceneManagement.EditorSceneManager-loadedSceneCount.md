<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.EditorSceneManager-loadedSceneCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of loaded Scenes.

Returns the current number of loaded Scenes in the Editor. The difference between loadedSceneCount and SceneManager.sceneCount is for scenes that are shown in the Hierarchy but are unloaded. SceneManager.sceneCount counts those scenes, but loadedSceneCount does not.

```csharp
using UnityEditor;
using UnityEditor.SceneManagement;public class Example
{
    // adds a custom menu item which displays the number of open Scenes in a Dialogue Box
    [MenuItem("SceneExample/Number Of Scenes")]
    public static void NumberOfScenes()
    {
        EditorUtility.DisplayDialog("Number of loaded Scenes:", EditorSceneManager.loadedSceneCount.ToString(), "OK");
    }
}
```
