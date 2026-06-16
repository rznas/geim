<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.OpenURL.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| url | The URL to open. |

### Description

Opens the URL specified, subject to the permissions and limitations of your app’s current platform and environment.

This is handled in different ways depending on the nature of the URL, and with different security restrictions, depending on the runtime platform. 

**Note**: The `OpenURL` method can be used to open more than just web pages; therefore, ensure that you're aware of the security implications involved before using this method. This method is used to open HTTP and HTTPS (web page) URLs. If you provide a web page address as the parameter for this method, the web page opens in the default browser and display the browser application in the front.

In addition to the HTTP protocol used for web browsers, you can use other protocols in a URL, such as file transfer (FTP), email (mailto), database access (JDBC), and others platform-specific protocols. On some platforms, you can use `OpenURL` to do different types of tasks in Unity.

The `OpenURL` command is powerful and on some platforms, it can even open local files, run commands, and open connections over any protocol that the platform and security sandbox supports.

The `OpenURL` method runs with the same permissions as your app itself. For example, if your app is running as a WebGL player in a desktop web browser, it cannot access local files on the machine, because the WebGL platform runs inside a security sandbox which prevents that. However, this method is more powerful on platforms such as a desktop platform exe app, where it runs with fewer security restrictions without a security sandbox.

On desktop platforms, you should consider this method to have similar security implications as an [eval](https://en.wikipedia.org/wiki/Eval) type function, which is present in most programming languages.

If your app uses `OpenURL` to open URL strings from a third-party, or the strings put together using any user-supplied data, then that data should be considered untrusted and used to run arbitrary code under the same permissions of your app. You must also sanitise the untrusted data and validate to ensure that it generates the expected input for your application.

**Important:** Do not pass a string from an untrusted external source to the `OpenURL` function to prevent any malicious attempts from third-party software.

**WebGL:** From version 2019.4.25f1, 2020.3.5f1, 2021.1.2f1, and 2021.2.0a11, `Application.OpenURL` opens the URL in a new browser tab. In previous versions,`Application.OpenURL` opens the URL in the same browser tab, which terminates the active Unity application. To customize this behavior for any version, implement your own open URL function with a custom .jslib and C# method instead of using `Application.OpenURL`. Refer to Interaction with browser scripting for more information and examples.

**Android:** Due to security changes in Android 7.0 ([More information](https://developer.android.com/about/versions/nougat/android-7.0-changes#sharing-files)), `Application.OpenURL` can no longer be used for opening local app files. To share files with other applications, you must use ([FileProvider](https://developer.android.com/reference/androidx/core/content/FileProvider)).

**iOS:** `Application.OpenURL` cannot be used for opening local files.

*Example:*

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Application.OpenURL("http://unity3d.com/");
    }
}
```
