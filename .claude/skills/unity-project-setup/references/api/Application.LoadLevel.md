<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.LoadLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | The level to load. |
| name | The name of the level to load. |

### Description

**Note**: This is now obsolete. Use SceneManager.LoadScene instead.

Before you can load a level you have to add it to the list of levels used in the game. Use `File->Build Settings...` in Unity and add the levels you need to the level list there. MonoBehaviour.OnLevelWasLoaded is called on all active game objects after the level has been loaded. Refer to Order of execution for event functions for more information regarding the calling sequence once a level is loaded.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void LoadHighScoreLevel()
    {
        // Load the level named "HighScore".
        Application.LoadLevel("HighScore");
    }
}
```

When loading a new level all game objects that have been loaded before are destroyed. If you want to let an object survive when loading a new level, use Object.DontDestroyOnLoad. Calling LoadLevel will update Application.loadedLevel and Application.loadedLevelName.

**Note:** Actual level change happens in the beginning of the next frame at the Inititialization stage prior to the first MonoBehaviour.FixedUpdate call (refer to Order of execution for event functions):

- All game objects are being destroyed starting from root objects. OnDisable (if enabled) and OnDestroy callbacks are called for scripts.
- New objects are being initialized. `Awake`, `OnEnable`, `Start` callbacks are called for scripts.

Additional resources: Application.LoadLevelAsync, Application.LoadLevelAdditive, Application.LoadLevelAdditiveAsync.
