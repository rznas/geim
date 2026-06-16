<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidApplication-unityPlayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates the Unity bridge Java instance used by an activity or a service.

You can access this property from Unity's main thread which means you can use it in `Start()`, `Awake()`, or in methods with RuntimeInitializeOnLoadMethodAttribute. However, you cannot access it from constructors or field initializers as these are called on the loader thread.

**Note:** This object is managed by Unity runtime, so do not call AndroidJavaObject.Dispose on it.

```csharp
using UnityEngine;
using UnityEngine.Android;public class Controller : MonoBehaviour
{
    void Start()
    {
        var bridgeClass = AndroidApplication.unityPlayer.Call<string>("toString");
        var isActivity = bridgeClass.StartsWith("com.unity3d.player.UnityPlayerForActivityOrService");
        var isGameActivity = bridgeClass.StartsWith("com.unity3d.player.UnityPlayerForGameActivity");
        Debug.Log($"Class for Activity: {isActivity}, Class for GameActivity: {isGameActivity}");
    }
}
```
