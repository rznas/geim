<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager.GetAllScenes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Scene[]** Array of Scenes in the Hierarchy.

### Description

Returns an array of all the Scenes currently open in the hierarchy.

This list will contain all the Scenes currently open in the hierarchy. This is not necessarily the same as all the Scenes that exist in your project, or that are listed in the Build Settings.

```csharp
using UnityEngine;
using UnityEngine.SceneManagement;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        Scene[] scenes = SceneManager.GetAllScenes();        foreach (Scene sc in scenes)
            Debug.Log("'" + sc.name + "'");
    }
}
```

This API is obsolete. Please use SceneManager.sceneCount and SceneManager.GetSceneAt() instead.
