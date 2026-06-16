<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Sign.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Real number whose sign will be retrieved. |

### Returns

**float** Mathematical sign of `f`.

### Description

Returns the mathematical sign of `f`.

Returns either a value of -1 when `f` is negative, or a value of 1 when `f` is 0 or greater. This is different from standard 'Sign' implementations which return 0 whenever `f` equals 0.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints -1
        Debug.Log(Mathf.Sign(-10));
        // Prints 1
        Debug.Log(Mathf.Sign(0));
        // Prints 1
        Debug.Log(Mathf.Sign(10));
    }
}
```
