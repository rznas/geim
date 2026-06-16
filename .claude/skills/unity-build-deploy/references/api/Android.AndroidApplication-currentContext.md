<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidApplication-currentContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates the Java instance of the current context.

For more information, refer to the Android developer documentation on [Context](https://developer.android.com/reference/android/content/Context).

**Note:** This object is managed by Unity runtime, so do not call AndroidJavaObject.Dispose on it.

```csharp
using UnityEngine;
using UnityEngine.Android;public class Controller : MonoBehaviour
{
    void Start()
    {
        var isRunningGameActivity = AndroidApplication.currentContext.Call<string>("getLocalClassName").Equals("com.unity3d.player.UnityPlayerGameActivity");
        var isRunningActivity = AndroidApplication.currentContext.Call<string>("getLocalClassName").Equals("com.unity3d.player.UnityPlayerActivity");
        Debug.Log($"GameActivity {isRunningGameActivity}");
        Debug.Log($"Activity {isRunningActivity}");
    }
}
```
