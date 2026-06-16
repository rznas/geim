<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidApplication-currentActivity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates the Java instance of the current activity.

**Notes:**

- This object is managed by Unity runtime, so do not call AndroidJavaObject.Dispose on it.
- If the application is a service rather than an activity, this property returns null.

Additional resources: AndroidApplication.currentContext.

```csharp
using UnityEngine;
using UnityEngine.Android;public class Controller : MonoBehaviour
{
    void Start()
    {
        var isRunningGameActivity = AndroidApplication.currentActivity.Call<string>("getLocalClassName").Equals("com.unity3d.player.UnityPlayerGameActivity");
        var isRunningActivity = AndroidApplication.currentActivity.Call<string>("getLocalClassName").Equals("com.unity3d.player.UnityPlayerActivity");
        Debug.Log($"GameActivity {isRunningGameActivity}");
        Debug.Log($"Activity {isRunningActivity}");
    }
}
```
