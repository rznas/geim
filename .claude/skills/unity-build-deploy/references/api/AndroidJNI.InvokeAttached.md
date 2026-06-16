<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJNI.InvokeAttached.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Calls AndroidJNI.AttachCurrentThread (if necessary) before invoking a delegate, and then calls AndroidJNI.DetachCurrentThread.

**Note:** Use this method to invoke Java methods on threads other than the main thread.

```csharp
using System;
using UnityEngine;
using UnityEngine.Android;public class JavaThreads : MonoBehaviour
{
    public void Start()
    {
        var t = new System.Threading.Thread(() =>
        {
            AndroidJNI.InvokeAttached(() => Debug.Log(AndroidApplication.currentActivity.Call<string>("getLocalClassName")));
        });
        t.Start();
    }
}
```
