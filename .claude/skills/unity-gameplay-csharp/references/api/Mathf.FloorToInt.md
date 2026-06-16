<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.FloorToInt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Real number to round down. |

### Returns

**int** Greatest integer number smaller than `f`.

### Description

Returns the greatest integer number (cast as int) smaller than or equal to `f`.

When used with negative numbers, consider that values closer to 0 are considered greater than values closer to -Infinity.

Additional resources: Floor.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Prints 10
        Debug.Log(Mathf.FloorToInt(10.0f));
        // Prints 10
        Debug.Log(Mathf.FloorToInt(10.2f));
        // Prints 10
        Debug.Log(Mathf.FloorToInt(10.7f));        // Prints -10
        Debug.Log(Mathf.FloorToInt(-10.0f));
        // Prints -11
        Debug.Log(Mathf.FloorToInt(-10.2f));
        // Prints -11
        Debug.Log(Mathf.FloorToInt(-10.7f));
    }
}
```
