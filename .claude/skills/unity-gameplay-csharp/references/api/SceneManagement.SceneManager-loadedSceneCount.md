<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager-loadedSceneCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of loaded Scenes.

Returns the current number of loaded Scenes. This doesn't include the Scenes that are currently loading or unloading. For the total number of Scenes see SceneManager.sceneCount.

```csharp
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEditor;public class Example
{
    // adds a custom menu item which displays the number of open Scenes in a Dialogue Box
    [MenuItem("SceneExample/Number Of Scenes")]
    public static void NumberOfScenes()
    {
        EditorUtility.DisplayDialog("Number of loaded Scenes:", SceneManager.loadedSceneCount.ToString(), "OK");
    }
}
```
