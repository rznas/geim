<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color32.ToString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | A numeric format string. |
| formatProvider | An object that specifies culture-specific formatting. |

### Description

Returns a formatted string for this color.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Color32 color = Color.white;
        print(color.ToString("x"));
    }
}
```
