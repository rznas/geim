<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AndroidJavaObject.Set.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| fieldName | The name of the field (e.g. *int counter;* would have fieldName = "counter"). |
| val | The value to assign to the field. It has to match the field type. |

### Description

Set the value of a field in an object (non-static).

The generic parameter determines the field type.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        AndroidJavaObject javaObject = new AndroidJavaObject("android.text.format.Time");
        javaObject.Set<bool>("allDay", true);
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| fieldID | The ID of the field to set. |
| val | The value to assign to the field. It has to match the field type. |

### Description

Set the value of a field in an object (non-static).

The generic parameter determines the field type.
