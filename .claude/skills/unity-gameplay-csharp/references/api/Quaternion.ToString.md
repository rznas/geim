<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Quaternion.ToString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | A numeric format string. |
| formatProvider | An object that specifies culture-specific formatting. |

### Description

Returns a formatted string for this quaternion.

Defaults to five digits displayed (format="F5"). For more information, see Microsoft's documentation on [Standard numeric format strings](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-numeric-format-strings#FFormatString).

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        Quaternion quaternion = new Quaternion(1.0f, 2.0f, 3.0f, 4.0f);
        Debug.Log(quaternion.ToString()); // output displayed as: "(1.00000, 2.00000, 3.00000, 4.00000)"
    }
}
```
