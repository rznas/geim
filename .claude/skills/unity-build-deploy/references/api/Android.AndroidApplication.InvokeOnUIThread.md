<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidApplication.InvokeOnUIThread.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Invokes delegate on Android application's UI thread.

**Note:** Certain Android Java functions, such as those related to the user interface can only be called on the UI thread.

Additional resources: [Threads](https://developer.android.com/guide/components/processes-and-threads#Threads)

```csharp
using System;
using UnityEngine;
using UnityEngine.Android;
public class JavaThreads: MonoBehaviour
{
    public void Start()
    {
        AndroidApplication.InvokeOnUIThread(() =>
        {
            // Button can only be added on UI thread
            using var button = new AndroidJavaObject("android.widget.Button", AndroidApplication.currentActivity);
            button.Call("setText", "Hello World");
            using var layoutParams = new AndroidJavaObject("android.widget.LinearLayout$LayoutParams", 500, 100);
            button.Call("setLayoutParams", layoutParams);
            AndroidApplication.unityPlayer
                .Call<AndroidJavaObject>("getFrameLayout")
                .Call("addView", button);
        });
    }
}
```
