<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJavaObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AndroidJavaObject is the Unity representation of a generic instance of java.lang.Object.

It can be used as type-less interface to an instance of any Java class. **Note**: this API can be used from custom thread, but requires that thread to be attached to JVM first, see AndroidJNI.AttachCurrentThread.

### Constructors

| Constructor | Description |
| --- | --- |
| AndroidJavaObject | Construct an AndroidJavaObject based on the name of the class. |

### Public Methods

| Method | Description |
| --- | --- |
| Call | Calls a Java method on an object (non-static). |
| CallStatic | Call a static Java method on a class. |
| CloneReference | Creates a clone of the C# object that references the same Java object. |
| Dispose | IDisposable callback. |
| Get | Get the value of a field in an object (non-static). |
| GetRawClass | Retrieves the raw jclass pointer to the Java class.Note: Using raw JNI functions requires advanced knowledge of the Android Java Native Interface (JNI). |
| GetRawObject | Retrieves the raw jobject pointer to the Java object.Note: Using raw JNI functions requires advanced knowledge of the Android Java Native Interface (JNI). |
| GetStatic | Get the value of a static field in an object type. |
| Set | Set the value of a field in an object (non-static). |
| SetStatic | Set the value of a static field in an object type. |
