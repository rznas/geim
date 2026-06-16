<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-playModeStateChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event that is raised whenever the Editor's play mode state changes.

Add an event handler to this event to receive a notification that the play mode state has changed, as well as information about the state it has changed into.

The following example script logs the Editor's play mode state to the console whenever if changes. Copy it into a file called PlayModeStateChangedExample.cs and put it in a folder called Editor.

```csharp
using UnityEngine;
using UnityEditor;// ensure class initializer is called whenever scripts recompile
[InitializeOnLoadAttribute]
public static class PlayModeStateChangedExample
{
    // register an event handler when the class is initialized
    static PlayModeStateChangedExample()
    {
        EditorApplication.playModeStateChanged += LogPlayModeState;
    }    private static void LogPlayModeState(PlayModeStateChange state)
    {
        Debug.Log(state);
    }
}
```

Additional resources: PlayModeStateChange, EditorApplication.isPlaying, EditorApplication.pauseStateChanged.
