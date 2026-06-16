<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJavaProxy.Invoke.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| methodName | Name of the invoked java method. |
| args | Arguments passed from the java vm - converted into AndroidJavaObject, AndroidJavaClass or a primitive. |
| javaArgs | Arguments passed from the java vm - all objects are represented by AndroidJavaObject, int for instance is represented by a java.lang.Integer object. |

### Description

Called by the java vm whenever a method is invoked on the java proxy interface. You can override this to run special code on method invocation, or you can leave the implementation as is, and leave the default behavior which is to look for c# methods matching the signature of the java method.

### Parameters

| Parameter | Description |
| --- | --- |
| methodName | Name of the invoked java method. |
| javaArgs | A reference to Java object array with arguments passed to this method. |

### Returns

**IntPtr** A local reference to Java object, representing the return value.

### Description

Called by the java vm whenever a method is invoked on the java proxy interface. You can override this to run special code on method invocation, or you can leave the implementation as is, which will convert argument array to AndroidJavaObject[] and call other Invoke.
