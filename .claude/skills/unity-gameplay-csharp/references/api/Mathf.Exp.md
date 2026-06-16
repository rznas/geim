<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Exp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| power | Exponent of the exponentiation operation. |

### Returns

**float** Result of the exponentiation operation.

### Description

Returns the result of raising euler's number (e) to the power `power`.

The result of this function is the same as the result of 'Mathf.Pow(e, power)', with e being Euler's number (2.718282).

Additional resources: Pow.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Prints Infinity
        Debug.Log(Mathf.Exp(Mathf.Infinity));
        // Prints 2.718282
        Debug.Log(Mathf.Exp(1));
        // Prints 1
        Debug.Log(Mathf.Exp(0));
        // Prints 0
        Debug.Log(Mathf.Exp(-Mathf.Infinity));
    }
}
```
