<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Floor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Real number to round down. |

### Returns

**float** Greatest integer number smaller than `f`.

### Description

Returns the greatest integer number smaller than or equal to `f`.

When used with negative numbers, consider that values closer to 0 are considered greater than values closer to -Infinity.

Additional resources: FloorToInt, Ceil, Round.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Prints 10.0f
        Debug.Log(Mathf.Floor(10.0f));
        // Prints 10.0f
        Debug.Log(Mathf.Floor(10.2f));
        // Prints 10.0f
        Debug.Log(Mathf.Floor(10.7f));        // Prints -10.0f
        Debug.Log(Mathf.Floor(-10.0f));
        // Prints -11.0f
        Debug.Log(Mathf.Floor(-10.2f));
        // Prints -11.0f
        Debug.Log(Mathf.Floor(-10.7f));
    }
}
```
