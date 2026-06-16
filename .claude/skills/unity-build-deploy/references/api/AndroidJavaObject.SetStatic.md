<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJavaObject.SetStatic.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fieldName | The name of the field (e.g. *int counter;* would have fieldName = "counter"). |
| val | The value to assign to the field. It has to match the field type. |

### Description

Set the value of a static field in an object type.

The generic parameter determines the field type.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Create an object of user provided class org.example.StaticFields,
    // and set the value of field 'globalName'.
    void Start()
    {
        AndroidJavaObject javaObject = new AndroidJavaObject("org.example.StaticFields");
        javaObject.Set<string>("globalName", "this_is_the_name");
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| fieldID | The ID of the field to set. |
| val | The value to assign to the field. It has to match the field type. |

### Description

Set the value of a static field in an object type.

The generic parameter determines the field type.
