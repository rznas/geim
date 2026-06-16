<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.RoundToInt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Real number to round. |

### Returns

**int** Nearest integer number to `f`.

### Description

Returns `f` rounded to the nearest integer number (cast as int).

If the number ends in .5 so it is halfway between two integers, one of which is even and the other odd, the even number is returned.

Additional resources: Round.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // Prints 10
        Debug.Log(Mathf.RoundToInt(10.0f));
        // Prints 10
        Debug.Log(Mathf.RoundToInt(10.2f));
        // Prints 11
        Debug.Log(Mathf.RoundToInt(10.7f));
        // Prints 10
        Debug.Log(Mathf.RoundToInt(10.5f));
        // Prints 12
        Debug.Log(Mathf.RoundToInt(11.5f));        // Prints -10
        Debug.Log(Mathf.RoundToInt(-10.0f));
        // Prints -10
        Debug.Log(Mathf.RoundToInt(-10.2f));
        // Prints -11
        Debug.Log(Mathf.RoundToInt(-10.7f));
        // Prints -10
        Debug.Log(Mathf.RoundToInt(-10.5f));
        // Prints -12
        Debug.Log(Mathf.RoundToInt(-11.5f));
    }
}
```
