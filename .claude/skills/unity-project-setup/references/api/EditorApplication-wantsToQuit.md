<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-wantsToQuit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity raises this event when the editor application wants to quit.

Add an event handler to this event to receive a notification that the application is attempting to quit.

When this event is raised the quit process has started but can be cancelled. This means the editor is not guaranteed to quit. For a guaranteed quit event take a look at EditorApplication.quitting

Return true and the quit process will continue. Return false and quit process will cancel.

```csharp
using UnityEngine;
using UnityEditor;// Ensure class initializer is called whenever scripts recompile
[InitializeOnLoad]
public class EditorWantsToQuitExample
{
    static bool WantsToQuit()
    {
        Debug.Log("Editor prevented from quitting.");
        return false;
    }    static EditorWantsToQuitExample()
    {
        EditorApplication.wantsToQuit += WantsToQuit;
    }
}
```

Additional resources: EditorApplication.quitting.
