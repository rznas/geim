<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidApplication.InvokeOnUnityMainThread.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Invokes delegate on Android application's main thread.

This is useful if you receive a Java callback on the UI thread, but want to process result on Unity's main thread.

Additional resources: [Threads](https://developer.android.com/guide/components/processes-and-threads#Threads)

```csharp
using System.Threading;
using UnityEngine;
using UnityEngine.Android;public class JavaThreads : MonoBehaviour
{
    public class MyButtonListener : AndroidJavaProxy
    {
        public MyButtonListener()
            : base("android.view.View$OnClickListener")
        {
        }        public void onClick(AndroidJavaObject view)
        {
            Debug.Log($"onClick called on UI thread ${Thread.CurrentThread.ManagedThreadId}");            AndroidApplication.InvokeOnUnityMainThread(() =>
            {
                Debug.Log($"Delegating to main thread ${Thread.CurrentThread.ManagedThreadId}");
            });            view.Dispose();
        }
    }
    public void Start()
    {
        AndroidApplication.InvokeOnUIThread(() =>
        {
            // Button can only be added on UI thread
            using var button = new AndroidJavaObject("android.widget.Button", AndroidApplication.currentActivity);
            button.Call("setText", "Hello World");
            using var layoutParams = new AndroidJavaObject("android.widget.LinearLayout$LayoutParams", 500, 100);
            button.Call("setLayoutParams", layoutParams);
            button.Call("setOnClickListener", new MyButtonListener());            AndroidApplication.unityPlayer
                .Call<AndroidJavaObject>("getFrameLayout")
                .Call("addView", button);
        });
    }
}
```
