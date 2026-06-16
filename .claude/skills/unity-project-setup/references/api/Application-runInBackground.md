<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-runInBackground.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the Player should run when the application is in the background

By default, this is set to false and the application pauses when it is in the background.

**Android**: This property works in Android only if the application is visible, but not when it's in focused state. For example, when the app is run in multi-window mode, such as Samsung Dex and Oculus Quest 2. If the application is running in [background](https://developer.android.com/guide/background), it pauses regardless of the `Application.runInBackground` option. If you want to execute tasks while it is in background, you need to implement the [background service](https://developer.android.com/training/run-background-service/create-service).

**iOS**: iOS ignores this property because the operating system manages the application life cycle. For more information, refer to [Managing your app's life cycle](https://developer.apple.com/documentation/uikit/managing-your-app-s-life-cycle).

**Web**: On Web, the update loop runs at approximately one update per second when the application is running in the background. In addition, mobile browsers might pause the application if the screen is locked, even with this option enabled.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour 
{
    void Example() 
    {
        Application.runInBackground = true;
    }
}
```
