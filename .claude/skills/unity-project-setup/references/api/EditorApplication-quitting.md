<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication-quitting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity raises this event when the editor application is quitting.

Add an event handler to this event to receive a notification that the application is quitting.

Note that this will not fire if the Editor is forced to quit or if there is a crash. This event is raised when the quitting process cannot be cancelled.

To prevent the EditorApplication from quitting look at the EditorApplication.wantsToQuit event.

```csharp
using UnityEngine;
using UnityEditor;// Ensure class initializer is called whenever scripts recompile
[InitializeOnLoad]
public class EditorQuitExample
{
    static void Quit()
    {
        Debug.Log("Quitting the Editor");
    }    static EditorQuitExample()
    {
        EditorApplication.quitting += Quit;
    }
}
```

Additional resources: EditorApplication.wantsToQuit.
