<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager.GetActiveScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**Scene** The active Scene.

### Description

Gets the currently active Scene.

The currently active Scene is the Scene which will be used as the destination for new GameObjects and the source of current lighting settings. Note that while a Scene is being loaded, new GameObjects created in the Awake() and OnEnable() lifetime callbacks will always be added to the scene being loaded instead of the active scene. Note the active Scene has no impact on what Scenes are rendered. Additional resources: Scene.

```csharp
using UnityEngine;
using UnityEngine.SceneManagement;public class GetActiveSceneExample : MonoBehaviour
{
    void Start()
    {
        Scene scene = SceneManager.GetActiveScene();
        Debug.Log("Active Scene is '" + scene.name + "'.");
    }
}
```
