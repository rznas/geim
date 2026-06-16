<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJNIHelper.GetMethodID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| javaClass | Raw JNI Java class object (obtained by calling AndroidJNI.FindClass). |
| methodName | Name of the method as declared in Java. |
| signature | Method signature (e.g. obtained by calling AndroidJNIHelper.GetSignature). |
| isStatic | Set to `true` for static methods; `false` for instance (nonstatic) methods. |

### Description

Scans a particular Java class for a method matching a name and a signature.

The signature comparison is done to allow sub-/base-classes of a class types. If no signature is provided the first method with the correct name will be returned.

Additional resources: AndroidJNIHelper.GetSignature, AndroidJNIHelper.GetConstructorID, AndroidJNIHelper.GetFieldID.

### Parameters

| Parameter | Description |
| --- | --- |
| javaClass | Raw JNI Java class object (obtained by calling AndroidJNI.FindClass). |
| methodName | Name of the method as declared in Java. |
| args | Array with parameters to be passed to the method when invoked. |
| isStatic | Set to `true` for static methods; `false` for instance (nonstatic) methods. |

### Description

Get a JNI method ID based on calling arguments.

Generic parameter represents the method return type, and the regular method assumes 'void' return type. Scans a particular Java class for a method matching a signature based on passed arguments. The signature comparison is done to allow for sub-/base-classes of the class types.

### Parameters

| Parameter | Description |
| --- | --- |
| javaClass | Raw JNI Java class object (obtained by calling AndroidJNI.FindClass). |
| methodName | Name of the method as declared in Java. |
| args | Array with parameters to be passed to the method when invoked. |
| isStatic | Set to `true` for static methods; `false` for instance (nonstatic) methods. |

### Description

Get a JNI method ID based on calling arguments.

Generic parameter represents the method return type, and the regular method assumes 'void' return type. Scans a particular Java class for a method matching a signature based on passed arguments. The signature comparison is done to allow for sub-/base-classes of the class types.
