<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnApplicationPause.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| pauseStatus | True if the application is paused, False if playing. |

### Description

Sent to all GameObjects when the playing application pauses or resumes on losing or regaining focus.

When Run In Background (**Edit > Project Settings > Player > Resolution and Presentation**) is disabled, a game running in the Editor's Play mode or in a standalone Player will pause any time the Editor or Player application loses focus. In these cases Unity sends `OnApplicationPause(true)` to all MonoBehaviours.

 The `pauseStatus` parameter is either `true` (paused) or `false` (running). All MonoBehaviours receive this event while they are initializing, just after `Awake`, so it will be called (with status `false`) on first entering Play mode. They receive it again whenever the application pauses or unpauses on losing or regaining focus.

**Note**: Unity does **not** call `OnApplicationPause` in response to toggling the Pause button in the Editor toolbar. The status of the pause button in the Editor is tracked by the PauseState enum.

For `OnApplicationPause` to trigger in a Player application running separately from the Editor, the running Player must be windowed and smaller than the full screen. If the game is hidden (fully or partly) by another application then it pauses and Unity calls `OnApplicationPause` with `true`. When the game regains focus, Unity calls `OnApplicationPause` with `false`.

`OnApplicationPause` can be a co-routine; to do this use the `yield` statement in the function. Implemented this way, it is evaluated twice during the initial frame: first as an early notification, and secondly during the normal co-routine update step.

On **Android**, enabling the on-screen keyboard causes an OnApplicationFocus event with the value `false`. However, if you press "Home" at the moment the keyboard is enabled, the `OnApplicationFocus` event is not called and `OnApplicationPause` is called instead.

```csharp
using UnityEngine;public class AppPaused : MonoBehaviour
{
    bool isPaused = false;    void OnGUI()
    {
        if (isPaused)
            GUI.Label(new Rect(100, 100, 50, 30), "Game paused");
    }    void OnApplicationFocus(bool hasFocus)
    {
        isPaused = !hasFocus;
    }    void OnApplicationPause(bool pauseStatus)
    {
        isPaused = pauseStatus;
    }
}
```
