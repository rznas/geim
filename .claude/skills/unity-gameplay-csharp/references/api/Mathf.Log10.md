<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mathf.Log10.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| f | Value to compute the logarithm for. |

### Returns

**float** Result of the logarithm operation.

### Description

Returns the base 10 logarithm of a specified number.

Computing the base-10 logarithm of `f` is the inverse operation to raising 10 to the power of the output of this function. This means that 'Mathf.Pow(10, x) = f', with x being the output of this function.

Additional resources: Pow.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // logarithm of 100 in base 10
        // Prints 2
        print(Mathf.Log10(100));
    }
}
```
