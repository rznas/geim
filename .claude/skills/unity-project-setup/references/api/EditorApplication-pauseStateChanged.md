<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-pauseStateChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event that is raised whenever the Editor's pause state changes.

Add an event handler to this event to receive a notification that the pause state has changed, as well as information about the state it has changed into.

Note that the Editor may be paused or unpaused in both edit mode and play mode, so you should test isPlaying inside your event handler if you need to discriminate between these two conditions.

The following example script logs the Editor's pause state to the console whenever if changes. Copy it into a file called PauseStateChangedExample.cs and put it in a folder called Editor.

```csharp
using UnityEngine;
using UnityEditor;// ensure class initializer is called whenever scripts recompile
[InitializeOnLoadAttribute]
public static class PauseStateChangedExample
{
    // register an event handler when the class is initialized
    static PauseStateChangedExample()
    {
        EditorApplication.pauseStateChanged += LogPauseState;
    }    private static void LogPauseState(PauseState state)
    {
        Debug.Log(state);
    }
}
```

Additional resources: PauseState, EditorApplication.isPaused, EditorApplication.playModeStateChanged.
