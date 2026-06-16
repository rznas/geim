<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen-dpi.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current pixel density of the screen measured in dots-per-inch (DPI) (Read Only).

This is the actual DPI of the screen or physical device running the application. The property returns `0` if the current DPI cannot be determined.

**Android:** On Android devices, this property uses densityDpi which is a logical bucket containing a range of DPI values rather than providing an exact value. Alternatively, you can calculate the DPI value using an average of xdpi and ydpi as shown in the following code example.

While this approach might provide more accurate DPI value, some Android devices might report incorrect `xdpi` and `ydpi` values. It is recommended to account for these inaccuracies when following this method.

```csharp
using UnityEngine;
using UnityEngine.Android;public class Example : MonoBehaviour
{
    private void Start()
    {
        Debug.Log("SCREEN DPI: " + GetDPI());
    }    float GetDPI()
    {
        using var version = new AndroidJavaClass("android.os.Build$VERSION");
        var apiLevel = version.GetStatic<int>("SDK_INT");
        using var metrics = new AndroidJavaObject("android.util.DisplayMetrics");
        if (apiLevel >= 30)
        {
            using var display = AndroidApplication.currentActivity.Call<AndroidJavaObject>("getDisplay");            display.Call("getRealMetrics", metrics);
        }
        else
        {
            using var display = AndroidApplication.currentActivity.Call<AndroidJavaObject>("getWindowManager")
                .Call<AndroidJavaObject>("getDefaultDisplay");            display.Call("getMetrics", metrics);
        }        float xdpi = metrics.Get<float>("xdpi");
        float ydpi = metrics.Get<float>("ydpi");
        return (xdpi + ydpi) * 0.5f;
    }
}
```
