<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.Quit.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| exitCode | An optional exit code to return when the player application terminates on Windows, Mac and Linux. Defaults to 0. |

### Description

Quits the player application.

Shut down the running application. The Application.Quit call is ignored in the Editor.

If you want to use `Application.Quit` when running Unity inside another application, refer to Unity as a Library documentation.

On the Web platform, `Application.Quit` stops the Web Player but doesn't affect the web page front end. For ways to implement `Application.Quit` and manage resource cleanup, refer to examples in the web templates.

Android and iOS platforms have their own dedicated interfaces to hide and close applications, which might be the preferred way to close applications for some users. Therefore, it's not recommended to create your own way of shutting down with `Application.Quit` to prevent inconsistent user experience between your application and these platform interfaces. If you must programmatically quit an Android application, you can instead move the application to the background via [Activity.moveTaskToBack](https://developer.android.com/reference/android/app/Activity#moveTaskToBack(boolean)). For more information, refer to Quit a Unity Android application.

For iOS platform, in most cases the termination of application should be left at the user's discretion. Calling `Application.Quit` method in iOS Player might appear to the user that the application has crashed. For more information, refer to Apple Technical Page qa1561.

```csharp
using UnityEngine;
using System.Collections;// Quits the player when the user hits escapepublic class ExampleClass : MonoBehaviour
{
    void Update()
    {
        if (Input.GetKey("escape"))
        {
            Application.Quit();
        }
    }
}
```
