<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJavaProxy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class can be used to implement any java interface. Any java vm method invocation matching the interface on the proxy object will automatically be passed to the c# implementation.

**Note**: this API can be used from custom thread, but requires that thread to be attached to JVM first, see AndroidJNI.AttachCurrentThread.

```csharp
// Opens an android date picker dialog and grabs the result using a callback.
using UnityEngine;
using System;class ExampleClass : MonoBehaviour
{
    private static DateTime selectedDate = DateTime.Now;    class DateCallback : AndroidJavaProxy
    {
        public DateCallback() : base("android.app.DatePickerDialog$OnDateSetListener") {}
        void onDateSet(AndroidJavaObject view, int year, int monthOfYear, int dayOfMonth)
        {
            selectedDate = new DateTime(year, monthOfYear + 1, dayOfMonth);
            // If you have no longer any uses for the object, it must be disposed to prevent a leak
            view.Dispose();
        }
    }    void OnGUI()
    {
        if (GUI.Button(new Rect(15, 15, 450, 75), string.Format("{0:yyyy-MM-dd}", selectedDate)))
        {
            var activity = new AndroidJavaClass("com.unity3d.player.UnityPlayer").GetStatic<AndroidJavaObject>("currentActivity");
            activity.Call("runOnUiThread", new AndroidJavaRunnable(() =>
            {
                new AndroidJavaObject("android.app.DatePickerDialog", activity, new DateCallback(), selectedDate.Year, selectedDate.Month - 1, selectedDate.Day).Call("show");
            }));
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| javaInterface | Java interface implemented by the proxy. |

### Constructors

| Constructor | Description |
| --- | --- |
| AndroidJavaProxy |  |

### Public Methods

| Method | Description |
| --- | --- |
| equals | The equivalent of the java.lang.Object equals() method. |
| hashCode | The equivalent of the java.lang.Object hashCode() method. |
| Invoke | Called by the java vm whenever a method is invoked on the java proxy interface. You can override this to run special code on method invocation, or you can leave the implementation as is, and leave the default behavior which is to look for c# methods matching the signature of the java method. |
| toString | The equivalent of the java.lang.Object toString() method. |
