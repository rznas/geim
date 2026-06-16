<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJNIHelper.GetFieldID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| javaClass | Raw JNI Java class object (obtained by calling AndroidJNI.FindClass). |
| fieldName | Name of the field as declared in Java. |
| signature | Field signature (e.g. obtained by calling AndroidJNIHelper.GetSignature). |
| isStatic | Set to `true` for static fields; `false` for instance (nonstatic) fields. |

### Description

Scans a particular Java class for a field matching a name and a signature.

The signature comparison is done to allow sub-/base-classes of a class types. If no signature is provided the first field with the correct name will be returned.

Additional resources: AndroidJNIHelper.GetSignature, AndroidJNIHelper.GetConstructorID, AndroidJNIHelper.GetMethodID.

### Parameters

| Parameter | Description |
| --- | --- |
| javaClass | Raw JNI Java class object (obtained by calling AndroidJNI.FindClass). |
| fieldName | Name of the field as declared in Java. |
| isStatic | Set to `true` for static fields; `false` for instance (nonstatic) fields. |

### Description

Get a JNI field ID based on type detection. Generic parameter represents the field type.

Scans a particular Java class for a field matching a signature of the field type. The signature comparison is done to allow for sub-/base-classes of the class types.
