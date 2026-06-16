<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Pow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Base of the exponentiation operation. |
| p | Exponent of the exponentiation operation. |

### Returns

**float** Result of the exponentiation operation.

### Description

Returns the result of raising `f` to the power `p`.

The behaviour of exponentiation varies greatly depending on the sign and range of the exponent `p`:

- For real numbers in the range [1, ∞], the result of exponentiation is equal to the result of multiplying `f` by itself `p` times.
- For fractional numbers in the range (0, 1), the result of exponentiation is equal to the result of computing the n-th root of `f`, with n being 1/`p`.
- For the value 0, you will get the value 1.
- For real numbears in the range [-∞, 0), the result of exponentiation is equal to the result of diving 1 by the result of raising `f` to the absolute (non-signed) value of `p`.

Additional resources: Log.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints Infinity
        Debug.Log(Mathf.Pow(2, Mathf.Infinity));
        // Prints 256
        Debug.Log(Mathf.Pow(2, 8));
        // Prints 2
        Debug.Log(Mathf.Pow(2, 1));
        // Prints 1.414214
        Debug.Log(Mathf.Pow(2, 0.5f));
        // Prints 1
        Debug.Log(Mathf.Pow(2, 0));
        // Prints 0.7071068
        Debug.Log(Mathf.Pow(2, -0.5f));
        // Prints 0.5
        Debug.Log(Mathf.Pow(2, -1));
        // Prints 0.00390625
        Debug.Log(Mathf.Pow(2, -8));
        // Prints 0
        Debug.Log(Mathf.Pow(2, -Mathf.Infinity));
    }
}
```
