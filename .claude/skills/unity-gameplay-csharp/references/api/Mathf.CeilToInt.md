<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.CeilToInt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Real number to round up. |

### Returns

**int** Smallest integer number greater than `f`.

### Description

Returns the smallest integer number (cast as int) greater than or equal to `f`.

When used with negative numbers, consider that values closer to 0 are considered greater than values closer to -Infinity.

Additional resources: Ceil, Floor, FloorToInt, Round.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Prints 10
        Debug.Log(Mathf.CeilToInt(10.0f));
        // Prints 11
        Debug.Log(Mathf.CeilToInt(10.2f));
        // Prints 11
        Debug.Log(Mathf.CeilToInt(10.7f));        // Prints -10
        Debug.Log(Mathf.CeilToInt(-10.0f));
        // Prints -10
        Debug.Log(Mathf.CeilToInt(-10.2f));
        // Prints -10
        Debug.Log(Mathf.CeilToInt(-10.7f));
    }
}
```
