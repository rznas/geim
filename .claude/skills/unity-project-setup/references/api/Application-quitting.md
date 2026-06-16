<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-quitting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity raises this event when the Player application is quitting.

Add an event handler to this event to receive a notification that the application is quitting.

**Notes**: The `Application.quitting` event is raised when the quitting process cannot be cancelled. Examples of when this event is not raised are: when the Player is forced to quit or if there is a crash. `Application.quitting` is invoked when exiting Play mode.

**Android**: When an Android application is paused, the `Application.quitting` event doesn't get detected. This is because in the [paused state](https://developer.android.com/guide/components/activities/activity-lifecycle#onpause), the `activity` is no longer visible. As an alternative approach, consider using OnApplicationFocus(bool) or OnApplicationPause(bool). `OnApplicationFocus(bool)` is called when the application loses or gains focus. `OnApplicationPause(bool)` is called when the application pauses on losing focus or resumes on regaining focus. 

**UWP**: On UWP apps, there's no application quit event; therefore, consider using `OnApplicationFocus` event when `focusStatus` equals false.

To prevent the Player application from quitting, refer to the Application.wantsToQuit event.

Additional resources: [The activity lifecycle](https://developer.android.com/guide/components/activities/activity-lifecycle)

```csharp
using UnityEngine;public class PlayerQuitExample
{
    static void Quit()
    {
        Debug.Log("Quitting the Player");
    }    [RuntimeInitializeOnLoadMethod]
    static void RunOnStart()
    {
        Application.quitting += Quit;
    }
}
```

Additional resources: Application.wantsToQuit.
