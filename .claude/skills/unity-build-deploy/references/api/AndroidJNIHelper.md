<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJNIHelper.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helper interface for JNI interaction; signature creation and method lookups.

**Note:** Using *raw* JNI functions requires advanced knowledge of the Android Java Native Interface (JNI). *Please take note.*

### Static Properties

| Property | Description |
| --- | --- |
| debug | Set debug to true to log calls through the AndroidJNIHelper. |

### Static Methods

| Method | Description |
| --- | --- |
| Box | Convert primitive to it's object counterpart. |
| ConvertFromJNIArray | Creates a managed array from a Java array. |
| ConvertToJNIArray | Creates a Java array from a managed array. |
| CreateJavaProxy | Creates a java proxy object which connects to the supplied proxy implementation. |
| CreateJavaRunnable | Creates a UnityJavaRunnable object (implements java.lang.Runnable). |
| CreateJNIArgArray | Creates the parameter array to be used as argument list when invoking Java code through CallMethod() in AndroidJNI. |
| DeleteJNIArgArray | Deletes any local jni references previously allocated by CreateJNIArgArray(). |
| GetConstructorID | Scans a particular Java class for a constructor method matching a signature. |
| GetFieldID | Scans a particular Java class for a field matching a name and a signature. |
| GetMethodID | Scans a particular Java class for a method matching a name and a signature. |
| GetSignature | Creates the JNI signature string for particular object type. |
| Unbox | Converts Java object of a boxed type to its primitive counterpart. |
