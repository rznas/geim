<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJNIHelper.GetConstructorID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| javaClass | Raw JNI Java class object (obtained by calling AndroidJNI.FindClass). |
| signature | Constructor method signature (e.g. obtained by calling AndroidJNIHelper.GetSignature). |

### Description

Scans a particular Java class for a constructor method matching a signature.

The signature comparison is done to allow for sub-/base-classes of the class types. If no signature is provided the first constuctor found will be returned.

Additional resources: AndroidJNIHelper.GetSignature, AndroidJNIHelper.GetMethodID, AndroidJNIHelper.GetFieldID.

### Parameters

| Parameter | Description |
| --- | --- |
| javaClass | Raw JNI Java class object (obtained by calling AndroidJNI.FindClass). |
| args | Array with parameters to be passed to the constructor when invoked. |

### Description

Get a JNI method ID for a constructor based on calling arguments.

Scans a particular Java class for a constructor method matching a signature based on passed arguments. The signature comparison is done to allow for sub-/base-classes of the class types.
