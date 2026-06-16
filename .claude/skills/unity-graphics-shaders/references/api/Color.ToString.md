<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Color.ToString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | A numeric format string. |
| formatProvider | An object that specifies culture-specific formatting. |

### Description

Returns a formatted string of this color.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Color color = Color.magenta;        // Print "RGBA(1.000, 0.000, 1.000, 1.000)"
        print(color.ToString());        color = new Color(Random.value, Random.value, Random.value, 1.0f);        // Print for example "RGBA(0.36183, 0.49653, 0.04036, 1.00000)"
        // "F5" sets the format to 5 floating point digits  
        print(color.ToString("F5"));
    }
}
```
