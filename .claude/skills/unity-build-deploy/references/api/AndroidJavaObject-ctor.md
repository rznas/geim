<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJavaObject-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| className | Specifies the Java class name (e.g. "`java.lang.String`" or "`java/lang/String`"). |
| args | An array of parameters passed to the constructor. |

### Description

Construct an AndroidJavaObject based on the name of the class.

This essentially means locate the class type, allocate an object and run the specified constructor.

### Parameters

| Parameter | Description |
| --- | --- |
| jobject | A reference to existing Java object. |

### Description

Create AndroidJavaObject for existing Java object.

Does not take ownership of passed reference, you still have to delete it.

### Parameters

| Parameter | Description |
| --- | --- |
| clazz | A pointer to Java class. |
| constructorID | A method ID for the constructor to be used. |
| args | An array of parameters passed to the constructor. |

### Description

Create AndroidJavaObject (and it's Java counterpart) using given Java class and constructor.
