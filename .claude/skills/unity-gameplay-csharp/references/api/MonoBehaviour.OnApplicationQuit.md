<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnApplicationQuit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sent to all active GameObjects before the application quits.

In the Editor, Unity calls `OnApplicationQuit` when exiting Play mode. It's called on all script components, even if the component is disabled. Unity doesn't send this message to inactive GameObjects. 

Platform-specific considerations:

- iOS applications suspend rather than quit, so `OnApplicationQuit` won't be called. Use MonoBehaviour.OnApplicationPause instead for handling app suspension and cleanup.
- On Windows Store Apps and Windows Phone 8.1 there is no application quit event. Use the MonoBehaviour.OnApplicationFocus for handling app loss of focus.
- The Web platform doesn't support `OnApplicationQuit` because of the way browser tabs close. For a workaround, refer to Interaction with browser scripting in the manual.
- If the user suspends your application on a mobile platform, the operating system can quit the application to free up resources. In this case, depending on the operating system, Unity might be unable to call this method. On mobile platforms, don't rely on this method to save the state of your application. Instead, consider every loss of application focus as the exit of the application and use MonoBehaviour.OnApplicationFocus to save any data.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnApplicationQuit()
    {
        Debug.Log("Application ending after " + Time.time + " seconds");
    }
}
```
