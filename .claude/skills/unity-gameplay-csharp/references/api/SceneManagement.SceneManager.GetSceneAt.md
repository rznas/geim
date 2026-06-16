<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager.GetSceneAt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Index of the scene to get. Index must be greater than or equal to 0 and less than SceneManager.sceneCount. |

### Returns

**Scene** A reference to the Scene at the index specified.

### Description

Gets the scene at the specified index in the SceneManager's scene list. This includes scenes that are currently loading or unloading.

Additional resources: SceneManager.loadedSceneCount, SceneManager.sceneCount.

```csharp
using System.Text;
using UnityEditor;
using UnityEngine.SceneManagement;public class Example
{
    // adds a menu item which gives a brief summary of currently open Scenes
    [MenuItem("SceneExample/Scene Summary")]
    public static void ListSceneNames()
    {
        StringBuilder sb;        if (SceneManager.sceneCount > 0)
        {
            sb = new StringBuilder();
            for (int n = 0; n < SceneManager.sceneCount; ++n)
            {
                Scene scene = SceneManager.GetSceneAt(n);
                sb.Append(scene.name);
                sb.Append(scene.isLoaded ? " (Loaded, " : " (Not Loaded, ");
                sb.Append(scene.isDirty ? "Dirty, " : "Clean, ");
                sb.Append(scene.buildIndex >= 0 ? " in build)\n" : " NOT in build)\n");
            }
        }
        else
        {
            sb = new StringBuilder("No open Scenes.");
        }
        EditorUtility.DisplayDialog("Scene Summary", sb.ToString(), "OK");
    }
}
```
