<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-wantsToQuit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity raises this event when the Player application wants to quit.

Add an event handler to this event to receive a notification that application is attempting to quit.

When this event is raised the quit process has started but can be cancelled. This means the player is not guaranteed to quit. For a guaranteed quit event take a look at Application.quitting.

Returns true and the quit process continues. Returns false and the quit process cancels.

**Note**: The return value of this event is ignored when exiting Play mode in the Editor.

**Important**: The return value has no effect on iOS or iPadOS. The `Application.wantsToQuit` can't prevent termination in iOS or iPadOS.

This event is not always raised on Android platforms because device activity is no longer visible when an application is paused. Unity recommends that you use MonoBehaviour.OnApplicationFocus or MonoBehaviour.OnApplicationPause instead on Android platforms, including Meta Quest devices.

```csharp
using UnityEngine;public class PlayerWantsToQuitExample
{
    static bool WantsToQuit()
    {
        Debug.Log("Player prevented from quitting.");
        return false;
    }    [RuntimeInitializeOnLoadMethod]
    static void RunOnStart()
    {
        Application.wantsToQuit += WantsToQuit;
    }
}
```

Additional resources: Application.quitting.
