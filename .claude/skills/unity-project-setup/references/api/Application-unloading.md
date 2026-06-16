<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-unloading.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity raises this event when the Player is unloading.

Add an event handler to this event if you want to trigger events to Application.Unload calls. The event is raised after a call to Application.Unload is made, right before the unloading starts.

**Note:** The `Application.unloading` event is only supported on iOS, Android, and Universal Windows Platform.

```csharp
using UnityEngine;
using System.Collections;// Unload Unity when the user clicks the button. Exit is not applied to the application.public class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        if (GUI.Button(new Rect(10, 10, 200, 75), "Unload"))
            Application.Unload();
    }    static void OnUnload()
    {
        Debug.Log("Unloading the Player");
    }    [RuntimeInitializeOnLoadMethod]
    static void RunOnStart()
    {
        Application.unloading += OnUnload;
    }
}
```

Additional resources: Application.Unload.
