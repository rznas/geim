<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Bounds.ToString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | A numeric format string. |
| formatProvider | An object that specifies culture-specific formatting. |

### Description

Returns a formatted string for the bounds.

Defaults to two digits displayed (format="F2"). For more information, see Microsoft's documentation on [Standard numeric format strings](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-numeric-format-strings#FFormatString).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Bounds bounds = new Bounds(Vector3.zero, Vector3.zero);
        Debug.Log(bounds.ToString()); // output displayed as: "Center: (0.00, 0.00, 0.00), Extents: (0.00, 0.00, 0.00)"
    }
}
```
