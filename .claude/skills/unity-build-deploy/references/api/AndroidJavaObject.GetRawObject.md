<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJavaObject.GetRawObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Retrieves the raw `jobject` pointer to the Java object.

**Note:** Using raw JNI functions requires advanced knowledge of the Android Java Native Interface (JNI).

Additional resources: AndroidJavaObject.GetRawClass

```csharp
using System;
using UnityEngine;public class AndroidJavaObjectGetRawObjectExample: MonoBehaviour
{
    void Start()
    {
        using (AndroidJavaObject javaObject = new AndroidJavaObject("com.example.exampleunityplugin.ExampleJavaClass"))
        {
            IntPtr rawObject = javaObject.GetRawObject();
            string message = javaObject.Call<string>("getMessage");            Debug.Log("Message: " + message + " Pointer: "+ rawObject);
        }
    }
}
```
