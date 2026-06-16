<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector3.ToString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| format | A numeric format string. |
| formatProvider | An object that specifies culture-specific formatting. |

### Description

Returns a formatted string for this vector.

Defaults to two digits displayed (format="F2"). For more information, see Microsoft's documentation on [Standard numeric format strings](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-numeric-format-strings#FFormatString).

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // let Unity show these as (1.00, 2.00, 3.00)
        Vector3 vector = new Vector3(1, 2, 3);
        Debug.Log(vector.ToString());        // unity displays by default (1.23, 5.68, 9.01)
        vector = new Vector3(1.234f, 5.678f, 9.012f);
        Debug.Log(vector.ToString());        // but we can show this using format - 3 numbers after the decimal point
        // (1.234, 5.678, 9.012)
        Debug.Log(vector.ToString("F3"));        // now let's create some longer numbers
        vector = new Vector3(1.0f / 3.0f, -Mathf.PI, Mathf.Exp(-2.0f));        // we get (0.333333, -3.141593, 0.135335)
        Debug.Log("fractional part is 6: " + vector.ToString("F6"));        // note how F8 cannot display these numbers as we want
        // (0.33333330, -3.14159300, 0.13533530)
        Debug.Log("fractional part is 8: " + vector.ToString("F8"));
    }
}
```
