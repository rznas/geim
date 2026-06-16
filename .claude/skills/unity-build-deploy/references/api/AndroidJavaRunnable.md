<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJavaRunnable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AndroidJavaRunnable is the Unity representation of a java.lang.Runnable object.

Note that this is a delegate. As such, a new java.lang.reflect.Proxy object is created every time it is passed as an argument to Java. This means that passing a variable of AndroidJavaRunnable type to Java multiple times results in a new Java object each time with different hash code values. It also means that calling `equals()` on the Java object created as a representation of an AndroidJavaRunnable variable always returns false, even when compared to itself.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Pass execution context over to the Java UI thread.
    void Start()
    {
        AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
        AndroidJavaObject activity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity");
        activity.Call("runOnUiThread", new AndroidJavaRunnable(runOnUiThread));
    }    void runOnUiThread()
    {
        Debug.Log("I'm running on the Java UI thread!");
    }
}
```
